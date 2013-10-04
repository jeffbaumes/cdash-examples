/*jslint nomen:true */
/*globals __dirname, beforeEach, expect, describe, it, require, waitsFor */

var requirejs = require('requirejs');

requirejs.config({
    nodeRequire: require,
    baseUrl: __dirname
});

describe("foo", function () {
    "use strict";

    beforeEach(function () {
        var that = this;

        requirejs(['../src/foo'], function (foo) {
            that.foo = foo;
        });

        waitsFor(function () {
            return that.foo;
        });
    });

    it("should add correctly", function () {
        expect(this.foo.add(1, 2)).toBe(3);
    });

    it("always passes", function () {
        expect(true).toBe(true);
    });
});
