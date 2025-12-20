@CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_memcpy_68_badData = external local_unnamed_addr global ptr
@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3296a:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-832, i64 0, i64 0
  %4 = load i64, ptr %3, align 8
  store i64 %4, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_memcpy_68_badData, align 8
  call void @anon1()
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_329c3, label %dec_label_pc_329be

dec_label_pc_329be:                               ; preds = %dec_label_pc_3296a
  call void @__stack_chk_fail()
  br label %dec_label_pc_329c3

dec_label_pc_329c3:                               ; preds = %dec_label_pc_329be, %dec_label_pc_3296a
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_32a35:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_memcpy_68_badData, align 8
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_memcpy_68_badData, align 8
  %5 = ptrtoint ptr %4 to i64
  call void @printLongLongLine(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_32abd, label %dec_label_pc_32ab8

dec_label_pc_32ab8:                               ; preds = %dec_label_pc_32a35
  call void @__stack_chk_fail()
  br label %dec_label_pc_32abd

dec_label_pc_32abd:                               ; preds = %dec_label_pc_32ab8, %dec_label_pc_32a35
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

