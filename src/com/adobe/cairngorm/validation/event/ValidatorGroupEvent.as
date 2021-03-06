/**
 *  Copyright (c) 2007 - 2009 Adobe
 *  All rights reserved.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining
 *  a copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 *  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 *  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 *  IN THE SOFTWARE.
 */
package com.adobe.cairngorm.validation.event
{
    import flash.events.Event;

    import mx.collections.IList;

    public class ValidatorGroupEvent extends Event
    {
        public static const VALIDITY_CHANGE:String = "validityChange";

        public static const ENABLED_CHANGE:String = "enabledChange";

        private var _invalidValidators:IList;

        public function get invalidValidators():IList
        {
            return _invalidValidators;
        }

        public function get isValid():Boolean
        {
            return !(_invalidValidators && _invalidValidators.length > 0);
        }

        public function ValidatorGroupEvent(type:String, bubbles:Boolean = true,
                                            cancelable:Boolean = false, invalidValidators:IList = null)
        {
            super(type, bubbles, cancelable);

            _invalidValidators = invalidValidators;
        }

        override public function clone():Event
        {
            var event:ValidatorGroupEvent = new ValidatorGroupEvent(type, bubbles,
                                                                    cancelable, invalidValidators);
            return event;
        }
    }
}