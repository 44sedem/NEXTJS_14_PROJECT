"use client";
import React, {useState, useEffect} from 'react';
import { Search, Bell} from 'lucide-react';
import Image from 'next/image';
import Link from 'next/link';
import { useParams } from 'next/navigation';

const GetDate = () => {
  const params = useParams();
  const id = params.id as string;
  
  // This function gets the current time and date
  const [currentDateTime, setCurrentDateTime] = useState<Date | null>(null);
  const [isClient, setIsClient] = useState(false);

  useEffect(() => {
    // Set initial date and mark as client-side
    setIsClient(true);
    setCurrentDateTime(new Date());
    
    const timer = setInterval(() => {
      setCurrentDateTime(new Date());
    }, 60000); // Update every minute

    return () => clearInterval(timer);
  }, []);

  const formatDate = (date: Date) => {
    return new Intl.DateTimeFormat('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    }).format(date);
  };

  const formatTime = (date: Date) => {
    return new Intl.DateTimeFormat('en-US', {
      weekday: 'long',
      hour: 'numeric',
      minute: 'numeric',
      hour12: true
    }).format(date);
  };

  // Don't render date/time until client-side hydration is complete
  if (!isClient || !currentDateTime) {
    return (
      <div className="flex justify-between items-center mb-6">
        {/* // div class to display the search on the left */}
        <div className="relative ">
          <input
            type="text"
            placeholder="Search courses"
            className="pl-10 pr-4 py-2 border rounded-full w-64"
          />
          <Search className="absolute left-3 top-2.5 text-gray-400" size={20} />
        </div>
        
        {/* // div class to display the time and date on the right */}
        <div className="flex items-center space-x-4 ">
          <div className="text-sm text-gray-600 w-24 h-5 bg-gray-200 animate-pulse rounded"></div>
          <div className="text-sm text-gray-600 w-32 h-5 bg-gray-200 animate-pulse rounded"></div>
          <Bell className="text-gray-600" size={20} />
          <Link href={`${id}/profile`}>
          <Image src="/noavatar.jpg" alt="Placeholder" className="w-8 h-8 rounded-full" width={32} height={32}/>  </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="flex justify-between items-center mb-6">
      {/* // div class to display the search on the left */}
      <div className="relative ">
        <input
          type="text"
          placeholder="Search courses"
          className="pl-10 pr-4 py-2 border rounded-full w-64"
        />
        <Search className="absolute left-3 top-2.5 text-gray-400" size={20} />
      </div>
      
      {/* // div class to display the time and date on the right */}
      <div className="flex items-center space-x-4 ">
        <p className="text-sm text-gray-600 ">{formatDate(currentDateTime)}</p>
        <p className="text-sm text-gray-600">{formatTime(currentDateTime)}</p>
        <Bell className="text-gray-600" size={20} />
        <Link href={`${id}/profile`}>
        <Image src="/noavatar.jpg" alt="Placeholder" className="w-8 h-8 rounded-full" width={32} height={32}/>  </Link>
      </div>
    </div>
  );
};

export default GetDate;
