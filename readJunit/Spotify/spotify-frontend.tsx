import React, { useState } from 'react';
import { Music, Search, ListMusic, Disc3, UserCircle, Play } from 'lucide-react';

// Main application component
const SpotifyExplorer = () => {
  const [activeSection, setActiveSection] = useState('browse');
  const [searchQuery, setSearchQuery] = useState('');
  const [searchType, setSearchType] = useState('track');
  const [searchResults, setSearchResults] = useState(null);
  const [selectedItem, setSelectedItem] = useState(null);
  const [playlists, setPlaylists] = useState([
    { id: '1', name: 'Discover Weekly', owner: 'Spotify', images: [{ url: '/api/placeholder/120/120' }], tracks: { total: 30 } },
    { id: '2', name: 'Release Radar', owner: 'Spotify', images: [{ url: '/api/placeholder/120/120' }], tracks: { total: 25 } },
    { id: '3', name: 'Liked Songs', owner: 'Me', images: [{ url: '/api/placeholder/120/120' }], tracks: { total: 130 } }
  ]);
  const [featuredPlaylists, setFeaturedPlaylists] = useState([
    { id: '4', name: 'Top Hits 2025', owner: 'Spotify', images: [{ url: '/api/placeholder/120/120' }], tracks: { total: 50 } },
    { id: '5', name: 'Chill Vibes', owner: 'Spotify', images: [{ url: '/api/placeholder/120/120' }], tracks: { total: 40 } },
    { id: '6', name: 'Electronic Mix', owner: 'Spotify', images: [{ url: '/api/placeholder/120/120' }], tracks: { total: 45 } }
  ]);
  const [albums, setAlbums] = useState([
    { id: '7', name: 'Album 1', artists: [{ name: 'Artist 1' }], images: [{ url: '/api/placeholder/120/120' }], total_tracks: 12 },
    { id: '8', name: 'Album 2', artists: [{ name: 'Artist 2' }], images: [{ url: '/api/placeholder/120/120' }], total_tracks: 10 },
    { id: '9', name: 'Album 3', artists: [{ name: 'Artist 3' }], images: [{ url: '/api/placeholder/120/120' }], total_tracks: 8 }
  ]);
  const [artists, setArtists] = useState([
    { id: '10', name: 'Artist 1', images: [{ url: '/api/placeholder/120/120' }], genres: ['Pop', 'Rock'] },
    { id: '11', name: 'Artist 2', images: [{ url: '/api/placeholder/120/120' }], genres: ['Hip Hop', 'R&B'] },
    { id: '12', name: 'Artist 3', images: [{ url: '/api/placeholder/120/120' }], genres: ['Electronic', 'Dance'] }
  ]);
  const [tracks, setTracks] = useState([
    { id: '13', name: 'Track 1', artists: [{ name: 'Artist 1' }], album: { name: 'Album 1', images: [{ url: '/api/placeholder/120/120' }] }, duration_ms: 180000 },
    { id: '14', name: 'Track 2', artists: [{ name: 'Artist 2' }], album: { name: 'Album 2', images: [{ url: '/api/placeholder/120/120' }] }, duration_ms: 210000 },
    { id: '15', name: 'Track 3', artists: [{ name: 'Artist 3' }], album: { name: 'Album 3', images: [{ url: '/api/placeholder/120/120' }] }, duration_ms: 195000 }
  ]);
  const [playerState, setPlayerState] = useState({
    isPlaying: false,
    currentTrack: null,
    deviceId: '1',
    volume: 50,
    progress_ms: 0
  });
  const [user, setUser] = useState({
    display_name: 'User',
    images: [{ url: '/api/placeholder/120/120' }],
    followers: { total: 25 },
    country: 'US'
  });
  const [savedTracks, setSavedTracks] = useState([
    { added_at: '2025-01-01', track: { id: '16', name: 'Saved Track 1', artists: [{ name: 'Artist 4' }], album: { name: 'Album 4', images: [{ url: '/api/placeholder/120/120' }] }, duration_ms: 185000 } },
    { added_at: '2025-02-01', track: { id: '17', name: 'Saved Track 2', artists: [{ name: 'Artist 5' }], album: { name: 'Album 5', images: [{ url: '/api/placeholder/120/120' }] }, duration_ms: 200000 } }
  ]);
  const [savedAlbums, setSavedAlbums] = useState([
    { added_at: '2025-01-15', album: { id: '18', name: 'Saved Album 1', artists: [{ name: 'Artist 6' }], images: [{ url: '/api/placeholder/120/120' }], total_tracks: 9 } },
    { added_at: '2025-02-15', album: { id: '19', name: 'Saved Album 2', artists: [{ name: 'Artist 7' }], images: [{ url: '/api/placeholder/120/120' }], total_tracks: 11 } }
  ]);

  // Simulated API call for search
  const handleSearch = () => {
    console.log(`Searching for ${searchQuery} of type ${searchType}`);
    
    // Simulate API response based on search type
    let results;
    if (searchType === 'track') {
      results = tracks.filter(track => 
        track.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
        track.artists.some(artist => artist.name.toLowerCase().includes(searchQuery.toLowerCase()))
      );
    } else if (searchType === 'album') {
      results = albums.filter(album => 
        album.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
        album.artists.some(artist => artist.name.toLowerCase().includes(searchQuery.toLowerCase()))
      );
    } else if (searchType === 'artist') {
      results = artists.filter(artist => 
        artist.name.toLowerCase().includes(searchQuery.toLowerCase())
      );
    } else if (searchType === 'playlist') {
      results = [...playlists, ...featuredPlaylists].filter(playlist => 
        playlist.name.toLowerCase().includes(searchQuery.toLowerCase())
      );
    }
    
    setSearchResults({
      type: searchType,
      items: results || []
    });
  };

  // Player control functions
  const togglePlay = () => {
    setPlayerState(prev => ({
      ...prev,
      isPlaying: !prev.isPlaying
    }));
  };

  const playTrack = (track) => {
    setPlayerState(prev => ({
      ...prev,
      isPlaying: true,
      currentTrack: track
    }));
  };

  const nextTrack = () => {
    // Simulated next track logic
    console.log('Skipping to next track');
  };

  const previousTrack = () => {
    // Simulated previous track logic
    console.log('Going to previous track');
  };

  const setVolume = (value) => {
    setPlayerState(prev => ({
      ...prev,
      volume: value
    }));
  };

  // Save track to library
  const saveTrack = (track) => {
    console.log(`Saving track: ${track.name}`);
    // Simulate saving to library
    setSavedTracks(prev => [
      { added_at: new Date().toISOString(), track },
      ...prev
    ]);
  };

  // Remove track from library
  const removeTrack = (trackId) => {
    console.log(`Removing track with ID: ${trackId}`);
    setSavedTracks(prev => prev.filter(item => item.track.id !== trackId));
  };

  // Save album to library
  const saveAlbum = (album) => {
    console.log(`Saving album: ${album.name}`);
    setSavedAlbums(prev => [
      { added_at: new Date().toISOString(), album },
      ...prev
    ]);
  };

  // Remove album from library
  const removeAlbum = (albumId) => {
    console.log(`Removing album with ID: ${albumId}`);
    setSavedAlbums(prev => prev.filter(item => item.album.id !== albumId));
  };

  // Create a new playlist
  const createPlaylist = (name, description) => {
    console.log(`Creating playlist: ${name}`);
    const newPlaylist = {
      id: Date.now().toString(),
      name,
      description,
      owner: 'Me',
      images: [{ url: '/api/placeholder/120/120' }],
      tracks: { total: 0 }
    };
    setPlaylists(prev => [newPlaylist, ...prev]);
    return newPlaylist;
  };

  // Add track to playlist
  const addTrackToPlaylist = (playlistId, track) => {
    console.log(`Adding track ${track.name} to playlist ID: ${playlistId}`);
    // Update playlist track count
    setPlaylists(prev => prev.map(playlist => 
      playlist.id === playlistId 
        ? { ...playlist, tracks: { total: playlist.tracks.total + 1 } } 
        : playlist
    ));
  };

  // Render the appropriate section based on activeSection state
  const renderSection = () => {
    switch (activeSection) {
      case 'browse':
        return <BrowseSection 
          searchQuery={searchQuery} 
          setSearchQuery={setSearchQuery}
          searchType={searchType}
          setSearchType={setSearchType}
          handleSearch={handleSearch}
          searchResults={searchResults}
          featuredPlaylists={featuredPlaylists}
          albums={albums}
          playTrack={playTrack}
          saveTrack={saveTrack}
          saveAlbum={saveAlbum}
        />;
      case 'playlists':
        return <PlaylistsSection 
          playlists={playlists} 
          createPlaylist={createPlaylist}
          addTrackToPlaylist={addTrackToPlaylist}
          tracks={tracks}
        />;
      case 'albums':
        return <AlbumsSection 
          albums={albums}
          saveAlbum={saveAlbum}
        />;
      case 'artists':
        return <ArtistsSection 
          artists={artists}
        />;
      case 'player':
        return <PlayerSection 
          playerState={playerState}
          togglePlay={togglePlay}
          nextTrack={nextTrack}
          previousTrack={previousTrack}
          setVolume={setVolume}
          tracks={tracks}
          playTrack={playTrack}
        />;
      case 'profile':
        return <ProfileSection 
          user={user}
          savedTracks={savedTracks}
          savedAlbums={savedAlbums}
          removeTrack={removeTrack}
          removeAlbum={removeAlbum}
          playTrack={playTrack}
        />;
      default:
        return <BrowseSection />;
    }
  };

  return (
    <div className="flex h-screen bg-gray-100">
      {/* Sidebar Navigation */}
      <div className="w-64 bg-black text-white p-4">
        <div className="mb-8">
          <h1 className="text-xl font-bold mb-6">Spotify Explorer</h1>
          <div className="space-y-4">
            <NavItem 
              icon={<Search size={20} />} 
              label="Browse" 
              active={activeSection === 'browse'} 
              onClick={() => setActiveSection('browse')} 
            />
            <NavItem 
              icon={<ListMusic size={20} />} 
              label="Playlists" 
              active={activeSection === 'playlists'} 
              onClick={() => setActiveSection('playlists')} 
            />
            <NavItem 
              icon={<Disc3 size={20} />} 
              label="Albums" 
              active={activeSection === 'albums'} 
              onClick={() => setActiveSection('albums')} 
            />
            <NavItem 
              icon={<Music size={20} />} 
              label="Artists" 
              active={activeSection === 'artists'} 
              onClick={() => setActiveSection('artists')} 
            />
            <NavItem 
              icon={<Play size={20} />} 
              label="Player" 
              active={activeSection === 'player'} 
              onClick={() => setActiveSection('player')} 
            />
            <NavItem 
              icon={<UserCircle size={20} />} 
              label="Profile" 
              active={activeSection === 'profile'} 
              onClick={() => setActiveSection('profile')} 
            />
          </div>
        </div>
      </div>

      {/* Main Content */}
      <div className="flex-1 overflow-auto">
        <div className="p-8">
          {renderSection()}
        </div>
      </div>

      {/* Now Playing Bar (fixed at bottom) */}
      {playerState.currentTrack && (
        <div className="fixed bottom-0 left-0 right-0 bg-gray-900 text-white p-4 flex items-center justify-between">
          <div className="flex items-center">
            <img 
              src={playerState.currentTrack.album?.images?.[0]?.url || '/api/placeholder/48/48'} 
              alt={playerState.currentTrack.album?.name} 
              className="w-12 h-12 mr-4" 
            />
            <div>
              <p className="font-medium">{playerState.currentTrack.name}</p>
              <p className="text-gray-400 text-sm">{playerState.currentTrack.artists?.map(a => a.name).join(', ')}</p>
            </div>
          </div>
          <div className="flex items-center space-x-4">
            <button onClick={previousTrack} className="p-2 rounded-full hover:bg-gray-700">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <polygon points="19 20 9 12 19 4 19 20"></polygon>
                <line x1="5" y1="19" x2="5" y2="5"></line>
              </svg>
            </button>
            <button onClick={togglePlay} className="p-2 rounded-full hover:bg-gray-700">
              {playerState.isPlaying ? (
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <rect x="6" y="4" width="4" height="16"></rect>
                  <rect x="14" y="4" width="4" height="16"></rect>
                </svg>
              ) : (
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <polygon points="5 3 19 12 5 21 5 3"></polygon>
                </svg>
              )}
            </button>
            <button onClick={nextTrack} className="p-2 rounded-full hover:bg-gray-700">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <polygon points="5 4 15 12 5 20 5 4"></polygon>
                <line x1="19" y1="5" x2="19" y2="19"></line>
              </svg>
            </button>
          </div>
          <div className="flex items-center w-1/4">
            <input
              type="range"
              min="0"
              max="100"
              value={playerState.volume}
              onChange={(e) => setVolume(parseInt(e.target.value))}
              className="w-full"
            />
          </div>
        </div>
      )}
    </div>
  );
};

// Navigation item component
const NavItem = ({ icon, label, active, onClick }) => {
  return (
    <button
      className={`flex items-center space-x-3 w-full p-3 rounded-md transition ${
        active ? 'bg-gray-800 text-green-500' : 'hover:bg-gray-800'
      }`}
      onClick={onClick}
    >
      {icon}
      <span>{label}</span>
    </button>
  );
};

// Browse Section Component
const BrowseSection = ({ 
  searchQuery, 
  setSearchQuery, 
  searchType, 
  setSearchType, 
  handleSearch, 
  searchResults, 
  featuredPlaylists,
  albums,
  playTrack,
  saveTrack,
  saveAlbum
}) => {
  return (
    <div>
      <h2 className="text-3xl font-bold mb-6">Browse</h2>
      
      {/* Search Controls */}
      <div className="flex items-center space-x-4 mb-8">
        <input
          type="text"
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          placeholder="Search for tracks, albums, artists..."
          className="flex-1 p-2 border rounded-md"
        />
        <select 
          value={searchType}
          onChange={(e) => setSearchType(e.target.value)}
          className="p-2 border rounded-md"
        >
          <option value="track">Tracks</option>
          <option value="album">Albums</option>
          <option value="artist">Artists</option>
          <option value="playlist">Playlists</option>
        </select>
        <button 
          onClick={handleSearch}
          className="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600"
        >
          Search
        </button>
      </div>
      
      {/* Search Results */}
      {searchResults && (
        <div className="mb-8">
          <h3 className="text-xl font-bold mb-4">Search Results</h3>
          
          {searchResults.items.length === 0 ? (
            <p>No results found for "{searchQuery}"</p>
          ) : (
            <div>
              {searchResults.type === 'track' && (
                <div className="space-y-2">
                  {searchResults.items.map(track => (
                    <TrackItem 
                      key={track.id} 
                      track={track} 
                      playTrack={playTrack}
                      saveTrack={saveTrack}
                    />
                  ))}
                </div>
              )}
              
              {searchResults.type === 'album' && (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                  {searchResults.items.map(album => (
                    <AlbumItem 
                      key={album.id} 
                      album={album}
                      saveAlbum={saveAlbum}
                    />
                  ))}
                </div>
              )}
              
              {searchResults.type === 'artist' && (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                  {searchResults.items.map(artist => (
                    <ArtistItem key={artist.id} artist={artist} />
                  ))}
                </div>
              )}
              
              {searchResults.type === 'playlist' && (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                  {searchResults.items.map(playlist => (
                    <PlaylistItem key={playlist.id} playlist={playlist} />
                  ))}
                </div>
              )}
            </div>
          )}
        </div>
      )}
      
      {/* Featured Playlists Section */}
      {!searchResults && (
        <>
          <div className="mb-8">
            <h3 className="text-xl font-bold mb-4">Featured Playlists</h3>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              {featuredPlaylists.map(playlist => (
                <PlaylistItem key={playlist.id} playlist={playlist} />
              ))}
            </div>
          </div>
          
          <div className="mb-8">
            <h3 className="text-xl font-bold mb-4">New Releases</h3>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              {albums.map(album => (
                <AlbumItem key={album.id} album={album} saveAlbum={saveAlbum} />
              ))}
            </div>
          </div>
        </>
      )}
    </div>
  );
};

// Playlists Section Component
const PlaylistsSection = ({ playlists, createPlaylist, addTrackToPlaylist, tracks }) => {
  const [showCreateForm, setShowCreateForm] = useState(false);
  const [newPlaylistName, setNewPlaylistName] = useState('');
  const [newPlaylistDescription, setNewPlaylistDescription] = useState('');
  const [selectedPlaylist, setSelectedPlaylist] = useState(null);
  const [showAddTrackForm, setShowAddTrackForm] = useState(false);
  const [selectedTrackId, setSelectedTrackId] = useState('');

  const handleCreatePlaylist = (e) => {
    e.preventDefault();
    if (newPlaylistName) {
      const playlist = createPlaylist(newPlaylistName, newPlaylistDescription);
      setNewPlaylistName('');
      setNewPlaylistDescription('');
      setShowCreateForm(false);
      setSelectedPlaylist(playlist);
    }
  };

  const handleAddTrack = () => {
    if (selectedTrackId && selectedPlaylist) {
      const track = tracks.find(t => t.id === selectedTrackId);
      if (track) {
        addTrackToPlaylist(selectedPlaylist.id, track);
        setShowAddTrackForm(false);
        setSelectedTrackId('');
      }
    }
  };

  return (
    <div>
      <div className="flex justify-between items-center mb-6">
        <h2 className="text-3xl font-bold">Your Playlists</h2>
        <button 
          className="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600"
          onClick={() => setShowCreateForm(true)}
        >
          Create Playlist
        </button>
      </div>

      {/* Create Playlist Form */}
      {showCreateForm && (
        <div className="bg-gray-200 p-4 rounded-md mb-6">
          <h3 className="text-xl font-bold mb-4">Create New Playlist</h3>
          <form onSubmit={handleCreatePlaylist}>
            <div className="mb-4">
              <label className="block mb-2">Name</label>
              <input 
                type="text" 
                value={newPlaylistName} 
                onChange={(e) => setNewPlaylistName(e.target.value)}
                className="w-full p-2 border rounded-md"
                required
              />
            </div>
            <div className="mb-4">
              <label className="block mb-2">Description (optional)</label>
              <textarea 
                value={newPlaylistDescription} 
                onChange={(e) => setNewPlaylistDescription(e.target.value)}
                className="w-full p-2 border rounded-md"
                rows="3"
              />
            </div>
            <div className="flex justify-end space-x-2">
              <button 
                type="button" 
                onClick={() => setShowCreateForm(false)}
                className="px-4 py-2 border rounded-md"
              >
                Cancel
              </button>
              <button 
                type="submit" 
                className="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600"
              >
                Create
              </button>
            </div>
          </form>
        </div>
      )}

      {/* Playlists Grid or Playlist Details */}
      {selectedPlaylist ? (
        <div>
          <div className="flex items-center mb-4">
            <button 
              onClick={() => setSelectedPlaylist(null)}
              className="text-blue-500 mr-4"
            >
              ← Back to playlists
            </button>
            <h3 className="text-xl font-bold">{selectedPlaylist.name}</h3>
          </div>
          
          <div className="flex justify-between items-center mb-4">
            <div>
              <p className="text-gray-600">{selectedPlaylist.description || 'No description'}</p>
              <p className="text-sm text-gray-500">{selectedPlaylist.tracks.total} tracks</p>
            </div>
            <button 
              className="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600"
              onClick={() => setShowAddTrackForm(true)}
            >
              Add Track
            </button>
          </div>

          {/* Add Track Form */}
          {showAddTrackForm && (
            <div className="bg-gray-200 p-4 rounded-md mb-6">
              <h4 className="font-bold mb-2">Add Track to Playlist</h4>
              <div className="flex items-end space-x-2">
                <div className="flex-1">
                  <label className="block text-sm mb-1">Select Track</label>
                  <select 
                    value={selectedTrackId} 
                    onChange={(e) => setSelectedTrackId(e.target.value)}
                    className="w-full p-2 border rounded-md"
                  >
                    <option value="">Select a track...</option>
                    {tracks.map(track => (
                      <option key={track.id} value={track.id}>
                        {track.name} - {track.artists.map(a => a.name).join(', ')}
                      </option>
                    ))}
                  </select>
                </div>
                <button 
                  onClick={handleAddTrack}
                  disabled={!selectedTrackId}
                  className="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600 disabled:bg-gray-400"
                >
                  Add
                </button>
                <button 
                  onClick={() => setShowAddTrackForm(false)}
                  className="px-4 py-2 border rounded-md"
                >
                  Cancel
                </button>
              </div>
            </div>
          )}

          <p className="text-gray-500 italic mt-8">
            Note: In a real implementation, this would show the actual tracks in the playlist
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {playlists.map(playlist => (
            <div
              key={playlist.id}
              className="bg-white shadow rounded-md overflow-hidden cursor-pointer hover:shadow-md transition"
              onClick={() => setSelectedPlaylist(playlist)}
            >
              <img 
                src={playlist.images[0]?.url || '/api/placeholder/300/300'} 
                alt={playlist.name}
                className="w-full h-48 object-cover"
              />
              <div className="p-4">
                <h3 className="font-bold">{playlist.name}</h3>
                <p className="text-sm text-gray-600">By {playlist.owner}</p>
                <p className="text-sm text-gray-500">{playlist.tracks.total} tracks</p>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

// Albums Section Component
const AlbumsSection = ({ albums, saveAlbum }) => {
  return (
    <div>
      <h2 className="text-3xl font-bold mb-6">Albums</h2>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {albums.map(album => (
          <AlbumItem key={album.id} album={album} saveAlbum={saveAlbum} detailed />
        ))}
      </div>
    </div>
  );
};

// Artists Section Component
const ArtistsSection = ({ artists }) => {
  const [selectedArtist, setSelectedArtist] = useState(null);
  
  // Mock data for artist details
  const artistDetails = {
    topTracks: [
      { id: '101', name: 'Top Track 1', album: { name: 'Album X', images: [{ url: '/api/placeholder/64/64' }] }, duration_ms: 210000 },
      { id: '102', name: 'Top Track 2', album: { name: 'Album Y', images: [{ url: '/api/placeholder/64/64' }] }, duration_ms: 180000 },
      { id: '103', name: 'Top Track 3', album: { name: 'Album Z', images: [{ url: '/api/placeholder/64/64' }] }, duration_ms: 195000 },
    ],
    albums: [
      { id: 'a1', name: 'Artist Album 1', images: [{ url: '/api/placeholder/120/120' }], release_date: '2024-01-01', total_tracks: 10 },
      { id: 'a2', name: 'Artist Album 2', images: [{ url: '/api/placeholder/120/120' }], release_date: '2023-05-15', total_tracks: 8 },
    ],
    relatedArtists: [
      { id: 'r1', name: 'Related Artist 1', images: [{ url: '/api/placeholder/64/64' }] },
      { id: 'r2', name: 'Related Artist 2', images: [{ url: '/api/placeholder/64/64' }] },
      { id: 'r3', name: 'Related Artist 3', images: [{ url: '/api/placeholder/64/64' }] },
    ]
  };
  
  return (
    <div>
      <h2 className="text-3xl font-bold mb-6">Artists</h2>
      
      {selectedArtist ? (
        <div>
          <button 
            onClick={() => setSelectedArtist(null)}
            className="text-blue-500 mb-4"
          >
            ← Back to artists
          </button>
          
          <div className="flex items-center mb-6">
            <img 
              src={selectedArtist.images[0]?.url || '/api/placeholder/150/150'}
              alt={selectedArtist.name}
              className="w-40 h-40 rounded-full mr-6 object-cover"
            />
            <div>
              <h2 className="text-3xl font-bold">{selectedArtist.name}</h2>
              <p className="text-gray-600 mt-2">
                {selectedArtist.genres.join(', ')}
              </p>
            </div>
          </div>
          
          <div className="mb-8">
            <h3 className="text-xl font-bold mb-4">Top Tracks</h3>
            <div className="space-y-2">
              {artistDetails.topTracks.map(track => (
                <div key={track.id} className="flex items-center p-2 hover:bg-gray-100 rounded">
                  <img 
                    src={track.album?.images?.[0]?.url || '/api/placeholder/48/48'} 
                    alt={track.album?.name} 
                    className="w-12 h-12 mr-4"
                  />
                  <div className="flex-1">
                    <p className="font-medium">{track.name}</p>
                    <p className="text-sm text-gray-600">{track.album.name}</p>
                  </div>
                  <div className="text-right text-sm text-gray-500">
                    {Math.floor(track.duration_ms / 60000)}:{((track.duration_ms % 60000) / 1000).toFixed(0).padStart(2, '0')}
                  </div>
                </div>
              ))}
            </div>
          </div>
          
          <div className="mb-8">
            <h3 className="text-xl font-bold mb-4">Albums</h3>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              {artistDetails.albums.map(album => (
                <div key={album.id} className="bg-white shadow rounded-md overflow-hidden">
                  <img 
                    src={album.images[0]?.url || '/api/placeholder/300/300'} 
                    alt={album.name}
                    className="w-full h-48 object-cover"
                  />
                  <div className="p-4">
                    <h4 className="font-bold">{album.name}</h4>
                    <p className="text-sm text-gray-600">{new Date(album.release_date).getFullYear()}</p>
                    <p className="text-sm text-gray-500">{album.total_tracks} tracks</p>
                  </div>
                </div>
              ))}
            </div>
          </div>
          
          <div>
            <h3 className="text-xl font-bold mb-4">Related Artists</h3>
            <div className="flex space-x-4 overflow-x-auto pb-4">
              {artistDetails.relatedArtists.map(artist => (
                <div key={artist.id} className="flex-shrink-0 text-center w-32">
                  <img 
                    src={artist.images[0]?.url || '/api/placeholder/128/128'} 
                    alt={artist.name}
                    className="w-24 h-24 rounded-full mx-auto mb-2 object-cover"
                  />
                  <p className="font-medium">{artist.name}</p>
                </div>
              ))}
            </div>
          </div>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {artists.map(artist => (
            <div 
              key={artist.id} 
              className="bg-white shadow rounded-md overflow-hidden cursor-pointer hover:shadow-md transition"
              onClick={() => setSelectedArtist(artist)}
            >
              <img 
                src={artist.images[0]?.url || '/api/placeholder/300/300'} 
                alt={artist.name}
                className="w-full h-64 object-cover"
              />
              <div className="p-4">
                <h3 className="font-bold text-lg">{artist.name}</h3>
                <p className="text-sm text-gray-600">
                  {artist.genres.join(', ')}
                </p>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

// Player Section Component
const PlayerSection = ({ 
  playerState, 
  togglePlay, 
  nextTrack, 
  previousTrack, 
  setVolume,
  tracks,
  playTrack
}) => {
  return (
    <div>
      <h2 className="text-3xl font-bold mb-6">Player</h2>
      
      <div className="bg-gray-100 p-6 rounded-lg mb-8">
        <div className="flex items-center justify-between mb-6">
          <div className="flex items-center">
            <img 
              src={playerState.currentTrack?.album?.images?.[0]?.url || '/api/placeholder/120/120'} 
              alt={playerState.currentTrack?.album?.name || 'No track playing'} 
              className="w-24 h-24 mr-6" 
            />
            <div>
              <h3 className="text-xl font-bold">
                {playerState.currentTrack?.name || 'No track playing'}
              </h3>
              <p className="text-gray-600">
                {playerState.currentTrack?.artists?.map(a => a.name).join(', ') || 'Select a track to play'}
              </p>
            </div>
          </div>
          
          <div className="flex items-center space-x-4">
            <button onClick={previousTrack} className="p-2 rounded-full hover:bg-gray-200">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <polygon points="19 20 9 12 19 4 19 20"></polygon>
                <line x1="5" y1="19" x2="5" y2="5"></line>
              </svg>
            </button>
            <button 
              onClick={togglePlay} 
              className="p-3 rounded-full bg-green-500 text-white hover:bg-green-600"
              disabled={!playerState.currentTrack}
            >
              {playerState.isPlaying ? (
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <rect x="6" y="4" width="4" height="16"></rect>
                  <rect x="14" y="4" width="4" height="16"></rect>
                </svg>
              ) : (
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <polygon points="5 3 19 12 5 21 5 3"></polygon>
                </svg>
              )}
            </button>
            <button onClick={nextTrack} className="p-2 rounded-full hover:bg-gray-200">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <polygon points="5 4 15 12 5 20 5 4"></polygon>
                <line x1="19" y1="5" x2="19" y2="19"></line>
              </svg>
            </button>
          </div>
        </div>
        
        <div className="flex items-center space-x-4">
          <span className="text-sm">Volume</span>
          <input
            type="range"
            min="0"
            max="100"
            value={playerState.volume}
            onChange={(e) => setVolume(parseInt(e.target.value))}
            className="flex-1"
          />
          <span className="text-sm">{playerState.volume}%</span>
        </div>
      </div>
      
      <h3 className="text-xl font-bold mb-4">Play Queue</h3>
      
      <div className="space-y-2">
        {tracks.map(track => (
          <TrackItem 
            key={track.id} 
            track={track} 
            playTrack={playTrack}
            isCurrentTrack={playerState.currentTrack?.id === track.id}
          />
        ))}
      </div>
    </div>
  );
};

// Profile Section Component
const ProfileSection = ({ 
  user, 
  savedTracks, 
  savedAlbums,
  removeTrack,
  removeAlbum,
  playTrack
}) => {
  const [activeTab, setActiveTab] = useState('tracks');
  
  return (
    <div>
      <div className="flex items-center mb-8">
        <img 
          src={user.images[0]?.url || '/api/placeholder/120/120'}
          alt={user.display_name}
          className="w-24 h-24 rounded-full mr-6"
        />
        <div>
          <h2 className="text-3xl font-bold">{user.display_name}</h2>
          <p className="text-gray-600">{user.followers.total} followers • {user.country}</p>
        </div>
      </div>
      
      <div className="mb-6">
        <div className="border-b flex">
          <button 
            className={`py-3 px-4 font-medium ${activeTab === 'tracks' ? 'border-b-2 border-green-500' : ''}`}
            onClick={() => setActiveTab('tracks')}
          >
            Saved Tracks
          </button>
          <button 
            className={`py-3 px-4 font-medium ${activeTab === 'albums' ? 'border-b-2 border-green-500' : ''}`}
            onClick={() => setActiveTab('albums')}
          >
            Saved Albums
          </button>
        </div>
      </div>
      
      {activeTab === 'tracks' && (
        <div className="space-y-2">
          {savedTracks.length === 0 ? (
            <p className="text-gray-500">No saved tracks yet.</p>
          ) : (
            savedTracks.map(item => (
              <div key={item.track.id} className="flex items-center p-2 hover:bg-gray-100 rounded">
                <img 
                  src={item.track.album?.images?.[0]?.url || '/api/placeholder/48/48'} 
                  alt={item.track.album?.name} 
                  className="w-12 h-12 mr-4"
                />
                <div className="flex-1">
                  <p className="font-medium">{item.track.name}</p>
                  <p className="text-sm text-gray-600">
                    {item.track.artists?.map(a => a.name).join(', ')} • {item.track.album?.name}
                  </p>
                </div>
                <div className="flex items-center space-x-2">
                  <button 
                    onClick={() => playTrack(item.track)}
                    className="p-2 rounded-full hover:bg-gray-200"
                  >
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                      <polygon points="5 3 19 12 5 21 5 3"></polygon>
                    </svg>
                  </button>
                  <button 
                    onClick={() => removeTrack(item.track.id)}
                    className="p-2 rounded-full hover:bg-gray-200 text-red-500"
                  >
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                      <line x1="18" y1="6" x2="6" y2="18"></line>
                      <line x1="6" y1="6" x2="18" y2="18"></line>
                    </svg>
                  </button>
                </div>
              </div>
            ))
          )}
        </div>
      )}
      
      {activeTab === 'albums' && (
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {savedAlbums.length === 0 ? (
            <p className="text-gray-500">No saved albums yet.</p>
          ) : (
            savedAlbums.map(item => (
              <div key={item.album.id} className="bg-white shadow rounded-md overflow-hidden">
                <img 
                  src={item.album.images[0]?.url || '/api/placeholder/300/300'} 
                  alt={item.album.name}
                  className="w-full h-48 object-cover"
                />
                <div className="p-4">
                  <h3 className="font-bold">{item.album.name}</h3>
                  <p className="text-sm text-gray-600">{item.album.artists.map(a => a.name).join(', ')}</p>
                  <p className="text-sm text-gray-500">{item.album.total_tracks} tracks</p>
                  <div className="flex justify-end mt-2">
                    <button 
                      onClick={() => removeAlbum(item.album.id)}
                      className="p-1 rounded-full text-red-500 hover:bg-gray-100"
                    >
                      <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                        <polyline points="3 6 5 6 21 6"></polyline>
                        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                      </svg>
                    </button>
                  </div>
                </div>
              </div>
            ))
          )}
        </div>
      )}
    </div>
  );
};

// Track Item Component
const TrackItem = ({ track, playTrack, saveTrack, isCurrentTrack }) => {
  return (
    <div className={`flex items-center p-2 rounded ${isCurrentTrack ? 'bg-green-50' : 'hover:bg-gray-100'}`}>
      <img 
        src={track.album?.images?.[0]?.url || '/api/placeholder/48/48'} 
        alt={track.album?.name} 
        className="w-12 h-12 mr-4"
      />
      <div className="flex-1">
        <p className={`font-medium ${isCurrentTrack ? 'text-green-500' : ''}`}>{track.name}</p>
        <p className="text-sm text-gray-600">
          {track.artists?.map(a => a.name).join(', ')} • {track.album?.name}
        </p>
      </div>
      <div className="text-gray-500 text-sm mr-4">
        {Math.floor(track.duration_ms / 60000)}:{((track.duration_ms % 60000) / 1000).toFixed(0).padStart(2, '0')}
      </div>
      <div className="flex items-center space-x-2">
        <button 
          onClick={() => playTrack(track)}
          className="p-2 rounded-full hover:bg-gray-200"
        >
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
            <polygon points="5 3 19 12 5 21 5 3"></polygon>
          </svg>
        </button>
        {saveTrack && (
          <button 
            onClick={() => saveTrack(track)}
            className="p-2 rounded-full hover:bg-gray-200"
          >
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
              <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
            </svg>
          </button>
        )}
      </div>
    </div>
  );
};

// Album Item Component
const AlbumItem = ({ album, saveAlbum, detailed }) => {
  return (
    <div className="bg-white shadow rounded-md overflow-hidden hover:shadow-md transition">
      <img 
        src={album.images[0]?.url || '/api/placeholder/300/300'} 
        alt={album.name}
        className="w-full h-48 object-cover"
      />
      <div className="p-4">
        <h3 className="font-bold">{album.name}</h3>
        <p className="text-sm text-gray-600">{album.artists.map(a => a.name).join(', ')}</p>
        <p className="text-sm text-gray-500">{album.total_tracks} tracks</p>
        
        {detailed && (
          <div className="mt-4 space-y-1">
            <p className="text-sm text-gray-700 font-medium">About this album:</p>
            <p className="text-sm text-gray-600 italic">
              This would show album details like genre, release date, label, etc.
            </p>
          </div>
        )}
        
        {saveAlbum && (
          <div className="flex justify-end mt-2">
            <button 
              onClick={() => saveAlbum(album)}
              className="p-1 rounded-full text-gray-500 hover:bg-gray-100"
            >
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
              </svg>
            </button>
          </div>
        )}
      </div>
    </div>
  );
};

// Artist Item Component
const ArtistItem = ({ artist }) => {
  return (
    <div className="bg-white shadow rounded-md overflow-hidden hover:shadow-md transition">
      <img 
        src={artist.images[0]?.url || '/api/placeholder/300/300'} 
        alt={artist.name}
        className="w-full h-48 object-cover"
      />
      <div className="p-4">
        <h3 className="font-bold">{artist.name}</h3>
        <p className="text-sm text-gray-600">{artist.genres.join(', ')}</p>
      </div>
    </div>
  );
};

// Playlist Item Component
const PlaylistItem = ({ playlist }) => {
  return (
    <div className="bg-white shadow rounded-md overflow-hidden hover:shadow-md transition">
      <img 
        src={playlist.images[0]?.url || '/api/placeholder/300/300'} 
        alt={playlist.name}
        className="w-full h-48 object-cover"
      />
      <div className="p-4">
        <h3 className="font-bold">{playlist.name}</h3>
        <p className="text-sm text-gray-600">By {playlist.owner}</p>
        <p className="text-sm text-gray-500">{playlist.tracks.total} tracks</p>
      </div>
    </div>
  );
};

export default SpotifyExplorer;