import React, { useState, useEffect } from 'react';

const TrelloApp = () => {
  // 狀態管理
  const [apiKey, setApiKey] = useState('');
  const [token, setToken] = useState('');
  const [authenticated, setAuthenticated] = useState(false);
  const [view, setView] = useState('boards'); // boards, lists, cards, checklists
  const [boards, setBoards] = useState([]);
  const [selectedBoard, setSelectedBoard] = useState(null);
  const [lists, setLists] = useState([]);
  const [selectedList, setSelectedList] = useState(null);
  const [cards, setCards] = useState([]);
  const [selectedCard, setSelectedCard] = useState(null);
  const [checklists, setChecklists] = useState([]);
  const [error, setError] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  
  // 表單狀態
  const [newBoardName, setNewBoardName] = useState('');
  const [newListName, setNewListName] = useState('');
  const [newCardName, setNewCardName] = useState('');
  const [newCardDesc, setNewCardDesc] = useState('');
  const [newChecklistName, setNewChecklistName] = useState('');
  const [newCheckItemName, setNewCheckItemName] = useState('');

  // 認證
  const handleAuthenticate = () => {
    if (!apiKey || !token) {
      setError('需要 API Key 和 Token');
      return;
    }
    
    setAuthenticated(true);
    setError('');
    fetchBoards();
  };

  // 獲取操作
  const fetchBoards = async () => {
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 GET /members/me/boards
      // 在實際實現中，你會進行實際的 API 請求
      const response = await simulateApiCall(
        `https://trello.com/1/members/me/boards?key=${apiKey}&token=${token}`
      );
      setBoards(response);
      setIsLoading(false);
    } catch (err) {
      setError('獲取看板失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const fetchLists = async (boardId) => {
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 GET /boards/{idBoard}/lists
      const response = await simulateApiCall(
        `https://trello.com/1/boards/${boardId}/lists?key=${apiKey}&token=${token}`
      );
      setLists(response);
      setIsLoading(false);
    } catch (err) {
      setError('獲取清單失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const fetchCards = async (listId) => {
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 GET /lists/{idList}/cards
      const response = await simulateApiCall(
        `https://trello.com/1/lists/${listId}/cards?key=${apiKey}&token=${token}`
      );
      setCards(response);
      setIsLoading(false);
    } catch (err) {
      setError('獲取卡片失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const fetchChecklists = async (cardId) => {
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 GET /cards/{idCard}/checklists
      const response = await simulateApiCall(
        `https://trello.com/1/cards/${cardId}/checklists?key=${apiKey}&token=${token}`
      );
      setChecklists(response);
      setIsLoading(false);
    } catch (err) {
      setError('獲取檢查清單失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  // 創建操作
  const createBoard = async () => {
    if (!newBoardName) {
      setError('看板名稱為必填項');
      return;
    }
    
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 POST /boards
      await simulateApiCall(
        `https://trello.com/1/boards?key=${apiKey}&token=${token}`,
        'POST',
        { name: newBoardName }
      );
      setNewBoardName('');
      fetchBoards();
    } catch (err) {
      setError('創建看板失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const createList = async () => {
    if (!newListName || !selectedBoard) {
      setError('清單名稱和選定的看板為必填項');
      return;
    }
    
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 POST /lists
      await simulateApiCall(
        `https://trello.com/1/lists?key=${apiKey}&token=${token}`,
        'POST',
        { name: newListName, idBoard: selectedBoard.id }
      );
      setNewListName('');
      fetchLists(selectedBoard.id);
    } catch (err) {
      setError('創建清單失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const createCard = async () => {
    if (!newCardName || !selectedList) {
      setError('卡片名稱和選定的清單為必填項');
      return;
    }
    
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 POST /cards
      await simulateApiCall(
        `https://trello.com/1/cards?key=${apiKey}&token=${token}`,
        'POST',
        { 
          name: newCardName, 
          desc: newCardDesc,
          idList: selectedList.id 
        }
      );
      setNewCardName('');
      setNewCardDesc('');
      fetchCards(selectedList.id);
    } catch (err) {
      setError('創建卡片失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const createChecklist = async () => {
    if (!newChecklistName || !selectedCard) {
      setError('檢查清單名稱和選定的卡片為必填項');
      return;
    }
    
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 POST /cards/{idCard}/checklists
      await simulateApiCall(
        `https://trello.com/1/cards/${selectedCard.id}/checklists?key=${apiKey}&token=${token}`,
        'POST',
        { name: newChecklistName }
      );
      setNewChecklistName('');
      fetchChecklists(selectedCard.id);
    } catch (err) {
      setError('創建檢查清單失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const addCheckItem = async (checklistId) => {
    if (!newCheckItemName) {
      setError('檢查項目名稱為必填項');
      return;
    }
    
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 POST /checklists/{idChecklist}/checkItems
      await simulateApiCall(
        `https://trello.com/1/checklists/${checklistId}/checkItems?key=${apiKey}&token=${token}`,
        'POST',
        { name: newCheckItemName }
      );
      setNewCheckItemName('');
      fetchChecklists(selectedCard.id);
    } catch (err) {
      setError('添加檢查項目失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  // 刪除操作
  const deleteBoard = async (boardId) => {
    setIsLoading(true);
    try {
      // 在提供的圖表中沒有直接刪除看板的方法，
      // 但我們可以通過更新看板的關閉狀態來模擬
      await simulateApiCall(
        `https://trello.com/1/boards/${boardId}/closed?key=${apiKey}&token=${token}`,
        'PUT',
        { value: true }
      );
      fetchBoards();
    } catch (err) {
      setError('刪除看板失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const deleteList = async (listId) => {
    setIsLoading(true);
    try {
      // 與看板類似，我們可以關閉清單而不是刪除它們
      await simulateApiCall(
        `https://trello.com/1/lists/${listId}/closed?key=${apiKey}&token=${token}`,
        'PUT',
        { value: true }
      );
      fetchLists(selectedBoard.id);
    } catch (err) {
      setError('刪除清單失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const deleteCard = async (cardId) => {
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 DELETE /cards/{idCard}
      await simulateApiCall(
        `https://trello.com/1/cards/${cardId}?key=${apiKey}&token=${token}`,
        'DELETE'
      );
      fetchCards(selectedList.id);
    } catch (err) {
      setError('刪除卡片失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  const deleteChecklist = async (checklistId) => {
    setIsLoading(true);
    try {
      // 模擬 API 呼叫 DELETE /checklists/{idChecklist}
      await simulateApiCall(
        `https://trello.com/1/checklists/${checklistId}?key=${apiKey}&token=${token}`,
        'DELETE'
      );
      fetchChecklists(selectedCard.id);
    } catch (err) {
      setError('刪除檢查清單失敗: ' + err.message);
      setIsLoading(false);
    }
  };

  // 導航處理程序
  const selectBoard = (board) => {
    setSelectedBoard(board);
    setView('lists');
    fetchLists(board.id);
  };

  const selectList = (list) => {
    setSelectedList(list);
    setView('cards');
    fetchCards(list.id);
  };

  const selectCard = (card) => {
    setSelectedCard(card);
    setView('checklists');
    fetchChecklists(card.id);
  };

  const goBack = () => {
    if (view === 'lists') {
      setView('boards');
      setSelectedBoard(null);
    } else if (view === 'cards') {
      setView('lists');
      setSelectedList(null);
    } else if (view === 'checklists') {
      setView('cards');
      setSelectedCard(null);
    }
  };

  // 模擬 API 函數
  // 在實際應用中，你會用實際的 fetch 呼叫替換這個
  const simulateApiCall = (url, method = 'GET', body = null) => {
    console.log(`${method} ${url}`, body);
    
    return new Promise((resolve) => {
      setTimeout(() => {
        // 在這裡，我們根據請求模擬回應
        if (url.includes('/members/me/boards')) {
          resolve([
            { id: 'board1', name: '開發看板' },
            { id: 'board2', name: '行銷看板' },
            { id: 'board3', name: '個人任務' }
          ]);
        } else if (url.includes('/boards/') && url.includes('/lists')) {
          resolve([
            { id: 'list1', name: '待辦事項' },
            { id: 'list2', name: '進行中' },
            { id: 'list3', name: '已完成' }
          ]);
        } else if (url.includes('/lists/') && url.includes('/cards')) {
          resolve([
            { id: 'card1', name: '創建 UI 模型', desc: '為新功能設計 UI' },
            { id: 'card2', name: '實現 API', desc: '將前端連接到後端 API' },
            { id: 'card3', name: '編寫測試', desc: '創建單元和集成測試' }
          ]);
        } else if (url.includes('/cards/') && url.includes('/checklists')) {
          resolve([
            { 
              id: 'checklist1', 
              name: 'UI 任務', 
              checkItems: [
                { id: 'item1', name: '設計主頁', state: 'complete' },
                { id: 'item2', name: '設計登入表單', state: 'incomplete' }
              ] 
            },
            { 
              id: 'checklist2', 
              name: '後端任務', 
              checkItems: [
                { id: 'item3', name: '設置數據庫', state: 'complete' },
                { id: 'item4', name: '創建 API 端點', state: 'incomplete' }
              ] 
            }
          ]);
        } else {
          // 對於 POST, PUT, DELETE 操作
          resolve({ success: true });
        }
      }, 500); // 模擬網絡延遲
    });
  };

  // 基於當前視圖的渲染方法
  const renderAuthForm = () => (
    <div className="bg-white p-6 rounded-lg shadow-md">
      <h2 className="text-xl font-bold mb-4">Trello API 認證</h2>
      <div className="mb-4">
        <label className="block text-gray-700 mb-2">API Key</label>
        <input
          type="text"
          value={apiKey}
          onChange={(e) => setApiKey(e.target.value)}
          className="w-full p-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500"
          placeholder="輸入您的 Trello API Key"
        />
      </div>
      <div className="mb-4">
        <label className="block text-gray-700 mb-2">Token</label>
        <input
          type="text"
          value={token}
          onChange={(e) => setToken(e.target.value)}
          className="w-full p-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500"
          placeholder="輸入您的 Trello Token"
        />
      </div>
      <button
        onClick={handleAuthenticate}
        className="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600"
      >
        認證
      </button>
      <p className="mt-4 text-sm text-gray-600">
        您可以從{" "}
        <a href="https://trello.com/app-key" className="text-blue-500 hover:underline" target="_blank" rel="noopener noreferrer">
          Trello 開發者門戶
        </a>
        取得您的 API Key 和 Token
      </p>
    </div>
  );

  const renderBoards = () => (
    <div>
      <h2 className="text-xl font-bold mb-4">看板</h2>
      <div className="mb-4">
        <input
          type="text"
          value={newBoardName}
          onChange={(e) => setNewBoardName(e.target.value)}
          className="p-2 border rounded mr-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          placeholder="新看板名稱"
        />
        <button
          onClick={createBoard}
          className="bg-green-500 text-white p-2 rounded hover:bg-green-600"
        >
          創建看板
        </button>
      </div>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {boards.map((board) => (
          <div key={board.id} className="bg-white p-4 rounded-lg shadow-md">
            <div className="flex justify-between items-center mb-2">
              <h3 className="text-lg font-semibold">{board.name}</h3>
              <button
                onClick={() => deleteBoard(board.id)}
                className="text-red-500 hover:text-red-700"
              >
                刪除
              </button>
            </div>
            <button
              onClick={() => selectBoard(board)}
              className="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600 mt-2"
            >
              查看清單
            </button>
          </div>
        ))}
      </div>
    </div>
  );

  const renderLists = () => (
    <div>
      <div className="flex justify-between items-center mb-4">
        <button onClick={goBack} className="text-blue-500 hover:underline flex items-center">
          <span className="mr-1">←</span> 返回看板
        </button>
        <h2 className="text-xl font-bold">{selectedBoard?.name} - 清單</h2>
      </div>
      <div className="mb-4">
        <input
          type="text"
          value={newListName}
          onChange={(e) => setNewListName(e.target.value)}
          className="p-2 border rounded mr-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          placeholder="新清單名稱"
        />
        <button
          onClick={createList}
          className="bg-green-500 text-white p-2 rounded hover:bg-green-600"
        >
          創建清單
        </button>
      </div>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {lists.map((list) => (
          <div key={list.id} className="bg-white p-4 rounded-lg shadow-md">
            <div className="flex justify-between items-center mb-2">
              <h3 className="text-lg font-semibold">{list.name}</h3>
              <button
                onClick={() => deleteList(list.id)}
                className="text-red-500 hover:text-red-700"
              >
                刪除
              </button>
            </div>
            <button
              onClick={() => selectList(list)}
              className="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600 mt-2"
            >
              查看卡片
            </button>
          </div>
        ))}
      </div>
    </div>
  );

  const renderCards = () => (
    <div>
      <div className="flex justify-between items-center mb-4">
        <button onClick={goBack} className="text-blue-500 hover:underline flex items-center">
          <span className="mr-1">←</span> 返回清單
        </button>
        <h2 className="text-xl font-bold">{selectedList?.name} - 卡片</h2>
      </div>
      <div className="mb-4">
        <div className="flex flex-col mb-2">
          <input
            type="text"
            value={newCardName}
            onChange={(e) => setNewCardName(e.target.value)}
            className="p-2 border rounded mb-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="新卡片名稱"
          />
          <textarea
            value={newCardDesc}
            onChange={(e) => setNewCardDesc(e.target.value)}
            className="p-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="卡片描述（可選）"
            rows="3"
          />
        </div>
        <button
          onClick={createCard}
          className="bg-green-500 text-white p-2 rounded hover:bg-green-600"
        >
          創建卡片
        </button>
      </div>
      <div className="space-y-4">
        {cards.map((card) => (
          <div key={card.id} className="bg-white p-4 rounded-lg shadow-md">
            <div className="flex justify-between items-center mb-2">
              <h3 className="text-lg font-semibold">{card.name}</h3>
              <button
                onClick={() => deleteCard(card.id)}
                className="text-red-500 hover:text-red-700"
              >
                刪除
              </button>
            </div>
            {card.desc && <p className="text-gray-600 mb-4">{card.desc}</p>}
            <button
              onClick={() => selectCard(card)}
              className="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600 mt-2"
            >
              查看檢查清單
            </button>
          </div>
        ))}
      </div>
    </div>
  );

  const renderChecklists = () => (
    <div>
      <div className="flex justify-between items-center mb-4">
        <button onClick={goBack} className="text-blue-500 hover:underline flex items-center">
          <span className="mr-1">←</span> 返回卡片
        </button>
        <h2 className="text-xl font-bold">{selectedCard?.name} - 檢查清單</h2>
      </div>
      <div className="mb-4">
        <input
          type="text"
          value={newChecklistName}
          onChange={(e) => setNewChecklistName(e.target.value)}
          className="p-2 border rounded mr-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          placeholder="新檢查清單名稱"
        />
        <button
          onClick={createChecklist}
          className="bg-green-500 text-white p-2 rounded hover:bg-green-600"
        >
          創建檢查清單
        </button>
      </div>
      <div className="space-y-6">
        {checklists.map((checklist) => (
          <div key={checklist.id} className="bg-white p-4 rounded-lg shadow-md">
            <div className="flex justify-between items-center mb-4">
              <h3 className="text-lg font-semibold">{checklist.name}</h3>
              <button
                onClick={() => deleteChecklist(checklist.id)}
                className="text-red-500 hover:text-red-700"
              >
                刪除
              </button>
            </div>
            <div className="space-y-2 mb-4">
              {checklist.checkItems && checklist.checkItems.map((item) => (
                <div key={item.id} className="flex items-center">
                  <input
                    type="checkbox"
                    checked={item.state === 'complete'}
                    className="mr-2"
                    readOnly
                  />
                  <span className={item.state === 'complete' ? 'line-through text-gray-500' : ''}>
                    {item.name}
                  </span>
                </div>
              ))}
            </div>
            <div className="flex">
              <input
                type="text"
                value={newCheckItemName}
                onChange={(e) => setNewCheckItemName(e.target.value)}
                className="p-2 border rounded-l flex-grow focus:outline-none focus:ring-2 focus:ring-blue-500"
                placeholder="新檢查項目"
              />
              <button
                onClick={() => addCheckItem(checklist.id)}
                className="bg-green-500 text-white p-2 rounded-r hover:bg-green-600"
              >
                添加
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );

  // 主要渲染
  return (
    <div className="min-h-screen bg-gray-100 p-6">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-center">Trello API 前端</h1>
      </header>
      
      {error && (
        <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-4">
          <strong className="font-bold">錯誤：</strong>
          <span className="block sm:inline"> {error}</span>
        </div>
      )}
      
      {isLoading && (
        <div className="fixed top-0 left-0 w-full h-full flex items-center justify-center bg-black bg-opacity-50 z-50">
          <div className="bg-white p-4 rounded-lg shadow-lg">
            <p className="text-lg">載入中...</p>
          </div>
        </div>
      )}
      
      <main className="container mx-auto max-w-4xl">
        {!authenticated ? (
          renderAuthForm()
        ) : (
          <div>
            {view === 'boards' && renderBoards()}
            {view === 'lists' && renderLists()}
            {view === 'cards' && renderCards()}
            {view === 'checklists' && renderChecklists()}
          </div>
        )}
      </main>
      
      <footer className="mt-12 text-center text-gray-500 text-sm">
        <p>這是 Trello API 的簡化前端。</p>
      </footer>
    </div>
  );
};

export default TrelloApp;
