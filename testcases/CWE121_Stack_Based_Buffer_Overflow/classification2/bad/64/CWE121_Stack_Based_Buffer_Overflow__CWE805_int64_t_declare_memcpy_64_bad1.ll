@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_32194:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = bitcast ptr %dataBadBuffer_-832 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_321e4, label %dec_label_pc_321df

dec_label_pc_321df:                               ; preds = %dec_label_pc_32194
  call void @__stack_chk_fail()
  br label %dec_label_pc_321e4

dec_label_pc_321e4:                               ; preds = %dec_label_pc_321df, %dec_label_pc_32194
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_3224d:
  %0 = ptrtoint ptr %dataVoidPtr to i64
  %stack_var_-824 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = bitcast ptr %dataVoidPtr to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %0)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_322ed, label %dec_label_pc_322e8

dec_label_pc_322e8:                               ; preds = %dec_label_pc_3224d
  call void @__stack_chk_fail()
  br label %dec_label_pc_322ed

dec_label_pc_322ed:                               ; preds = %dec_label_pc_322e8, %dec_label_pc_3224d
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

