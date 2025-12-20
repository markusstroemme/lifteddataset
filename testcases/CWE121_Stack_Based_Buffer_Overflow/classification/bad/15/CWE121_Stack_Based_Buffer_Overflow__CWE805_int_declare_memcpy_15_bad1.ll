@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_587ce:
  %stack_var_-424 = alloca i64, align 8
  %dataBadBuffer_-640 = alloca [50 x i32], align 8
  %stack_var_-632 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-632 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [50 x i32] undef, i32 %2, 0
  store [50 x i32] %3, ptr %dataBadBuffer_-640, align 8
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = bitcast ptr %dataBadBuffer_-640 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-424, i32 400)
  %9 = inttoptr i64 %6 to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_58855, label %dec_label_pc_58850

dec_label_pc_58850:                               ; preds = %dec_label_pc_587ce
  call void @__stack_chk_fail()
  br label %dec_label_pc_58855

dec_label_pc_58855:                               ; preds = %dec_label_pc_58850, %dec_label_pc_587ce
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

