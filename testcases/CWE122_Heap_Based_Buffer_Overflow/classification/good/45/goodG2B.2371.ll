@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_17179:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_45_goodG2BData, align 8
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_45_goodG2BData, align 8
  %5 = ptrtoint ptr %4 to i64
  call void @printLongLongLine(i64 %5)
  call void @free(ptr %1)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_17210, label %dec_label_pc_1720b

dec_label_pc_1720b:                               ; preds = %dec_label_pc_17179
  call void @__stack_chk_fail()
  br label %dec_label_pc_17210

dec_label_pc_17210:                               ; preds = %dec_label_pc_1720b, %dec_label_pc_17179
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_17212:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_17245, label %dec_label_pc_1723b

dec_label_pc_1723b:                               ; preds = %dec_label_pc_17212
  call void @exit(i32 -1)
  unreachable

dec_label_pc_17245:                               ; preds = %dec_label_pc_17212
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_memcpy_45_goodG2BData, align 8
  call void @anon0()
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

