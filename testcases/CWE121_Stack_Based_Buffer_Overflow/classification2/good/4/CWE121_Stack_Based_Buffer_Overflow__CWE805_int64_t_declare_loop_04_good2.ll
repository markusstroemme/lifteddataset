@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2aae9:
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %1, i64 0, i64 100)
  store [100 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataGoodBuffer_-1632, align 8
  %2 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %3 = load i64, ptr %2, align 8
  %4 = icmp ult i64 %3, 100
  br i1 %4, label %dec_label_pc_2ab42.lr.ph, label %dec_label_pc_2ab7f

dec_label_pc_2ab42.lr.ph:                         ; preds = %dec_label_pc_2aae9
  %5 = ptrtoint ptr %stack_var_-1624 to i64
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = add i64 %6, -816
  store i64 %3, ptr %.reg2mem, align 8
  br label %dec_label_pc_2ab42

dec_label_pc_2ab42:                               ; preds = %dec_label_pc_2ab42.lr.ph, %dec_label_pc_2ab42
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = mul i64 %.reload, 8
  %9 = add i64 %8, %5
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = load i64, ptr %2, align 8
  %15 = add i64 %14, 1
  %16 = insertvalue [100 x i64] undef, i64 %15, 0
  store [100 x i64] %16, ptr %dataGoodBuffer_-1632, align 8
  %17 = load i64, ptr %2, align 8
  %18 = icmp ult i64 %17, 100
  store i64 %17, ptr %.reg2mem, align 8
  br i1 %18, label %dec_label_pc_2ab42, label %dec_label_pc_2ab7f

dec_label_pc_2ab7f:                               ; preds = %dec_label_pc_2ab42, %dec_label_pc_2aae9
  %19 = load i64, ptr %stack_var_-1624, align 8
  call void @printLongLongLine(i64 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_2aba6, label %dec_label_pc_2aba1

dec_label_pc_2aba1:                               ; preds = %dec_label_pc_2ab7f
  call void @__stack_chk_fail()
  br label %dec_label_pc_2aba6

dec_label_pc_2aba6:                               ; preds = %dec_label_pc_2aba1, %dec_label_pc_2ab7f
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

