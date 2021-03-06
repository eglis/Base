/*
 * Copyright (c) 2016 shinesoftware.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in
 * the documentation and/or other materials provided with the
 * distribution.
 *
 * Neither the names of the copyright holders nor the names of the
 * contributors may be used to endorse or promote products derived
 * from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * @package eurocv2.local
 * @subpackage base.js
 * @author shinesoftware
 * @copyright  2016 shinesoftware.
 * @license http://www.opensource.org/licenses/bsd-license.php BSD License
 * @link http://shinesoftware.com
 * @version @@PACKAGE_VERSION@@
 *
 */

/**
 * Created by shinesoftware on 06/08/16.
 */

/* http://www.bootstrap-switch.org/ */
$("[type=checkbox]").bootstrapSwitch();


// Auto Search
$('#searchbox').typeahead({
    name: 'searchbox',
    limit: 10,
    remote: {
        url: '/search/%QUERY',
        beforeSend: function(xhr){
            $(".tt-hint").addClass("loading");
        },
        filter: function(parsedResponse){
            $(".tt-hint").removeClass("loading");
            return parsedResponse;
        }
    },
    template: [
        '<p class="repo-name"><i class="fa {{icon}}"></i> <strong>{{value}}</strong><br/>{{keywords}}</p>',
    ].join(''),
    engine: Hogan
}).on("typeahead:selected", function($e, datum){
    window.location = datum['url'];
});