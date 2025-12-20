@global_var_bb9b5 = external constant [5 x i8]
@global_var_e6090 = external local_unnamed_addr global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_33b9e:
  %stack_var_-824 = alloca i64, align 8
  %dataBadBuffer_-1232 = alloca [50 x i64], align 8
  %stack_var_-1224 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_e6090, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_33bd4, label %dec_label_pc_33bc6

dec_label_pc_33bc6:                               ; preds = %dec_label_pc_33b9e
  %3 = ptrtoint ptr %stack_var_-1224 to i64
  %4 = insertvalue [50 x i64] undef, i64 %3, 0
  store [50 x i64] %4, ptr %dataBadBuffer_-1232, align 8
  br label %dec_label_pc_33bd4

dec_label_pc_33bd4:                               ; preds = %dec_label_pc_33bc6, %dec_label_pc_33b9e
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-1232, i64 0, i64 0
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %10 = load i64, ptr %8, align 8
  call void @printLongLongLine(i64 %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_33c30, label %dec_label_pc_33c2b

dec_label_pc_33c2b:                               ; preds = %dec_label_pc_33bd4
  call void @__stack_chk_fail()
  br label %dec_label_pc_33c30

dec_label_pc_33c30:                               ; preds = %dec_label_pc_33c2b, %dec_label_pc_33bd4
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

