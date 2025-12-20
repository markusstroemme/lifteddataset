@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_79cd1 = external constant [21 x i8]
@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_16324:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_22_goodG2B1Global, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = load i64, ptr %1, align 8
  call void @printLongLongLine(i64 %4)
  call void @free(ptr %1)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_163d8, label %dec_label_pc_163d3

dec_label_pc_163d3:                               ; preds = %dec_label_pc_16324
  call void @__stack_chk_fail()
  br label %dec_label_pc_163d8

dec_label_pc_163d8:                               ; preds = %dec_label_pc_163d3, %dec_label_pc_16324
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_164ee:
  %stack_var_-16.0.in.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16519, label %dec_label_pc_16508

dec_label_pc_16508:                               ; preds = %dec_label_pc_164ee
  call void @printLine(ptr @global_var_79cd1)
  store ptr %data, ptr %stack_var_-16.0.in.reg2mem, align 8
  br label %dec_label_pc_16538

dec_label_pc_16519:                               ; preds = %dec_label_pc_164ee
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  store ptr %2, ptr %stack_var_-16.0.in.reg2mem, align 8
  br i1 %4, label %dec_label_pc_16538, label %dec_label_pc_1652e

dec_label_pc_1652e:                               ; preds = %dec_label_pc_16519
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16538:                               ; preds = %dec_label_pc_16519, %dec_label_pc_16508
  %stack_var_-16.0.in.reload = load ptr, ptr %stack_var_-16.0.in.reg2mem, align 8
  ret ptr %stack_var_-16.0.in.reload
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

