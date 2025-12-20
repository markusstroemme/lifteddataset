@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5d386:
  %dataBadBuffer_-432 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-424 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [50 x i32] undef, i32 %2, 0
  store [50 x i32] %3, ptr %dataBadBuffer_-432, align 8
  %4 = bitcast ptr %dataBadBuffer_-432 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  call void @anon1(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_5d3d6, label %dec_label_pc_5d3d1

dec_label_pc_5d3d1:                               ; preds = %dec_label_pc_5d386
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d3d6

dec_label_pc_5d3d6:                               ; preds = %dec_label_pc_5d3d1, %dec_label_pc_5d386
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_5d43f:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = bitcast ptr %data to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-424, i32 400)
  %6 = trunc i64 %1 to i32
  call void @printIntLine(i32 %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %2, %7
  br i1 %8, label %dec_label_pc_5d4be, label %dec_label_pc_5d4b9

dec_label_pc_5d4b9:                               ; preds = %dec_label_pc_5d43f
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d4be

dec_label_pc_5d4be:                               ; preds = %dec_label_pc_5d4b9, %dec_label_pc_5d43f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

