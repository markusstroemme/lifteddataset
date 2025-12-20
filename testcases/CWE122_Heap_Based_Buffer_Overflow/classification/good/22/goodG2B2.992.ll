@global_var_79a7f = external constant [3 x i8]
@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_snprintf_22_goodG2B2Global = external local_unnamed_addr global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_b019:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_snprintf_22_goodG2B2Global, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %1, i32 100, ptr @global_var_79a7f, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %1)
  %4 = bitcast ptr %1 to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_b0c1, label %dec_label_pc_b0bc

dec_label_pc_b0bc:                                ; preds = %dec_label_pc_b019
  call void @__stack_chk_fail()
  br label %dec_label_pc_b0c1

dec_label_pc_b0c1:                                ; preds = %dec_label_pc_b0bc, %dec_label_pc_b019
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_b17f:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_snprintf_22_goodG2B2Global, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_b1bf, label %dec_label_pc_b199

dec_label_pc_b199:                                ; preds = %dec_label_pc_b17f
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_b1b8, label %dec_label_pc_b1ae

dec_label_pc_b1ae:                                ; preds = %dec_label_pc_b199
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b1b8:                                ; preds = %dec_label_pc_b199
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_b1bf

dec_label_pc_b1bf:                                ; preds = %dec_label_pc_b1b8, %dec_label_pc_b17f
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

