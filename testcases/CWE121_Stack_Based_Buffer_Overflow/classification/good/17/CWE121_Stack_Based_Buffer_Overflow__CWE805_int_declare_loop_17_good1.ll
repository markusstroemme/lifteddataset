@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_54934:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %dataGoodBuffer_-840 = alloca [100 x i32], align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [100 x i32] undef, i32 %2, 0
  store [100 x i32] %3, ptr %dataGoodBuffer_-840, align 8
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  store [100 x i32] [i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef], ptr %dataGoodBuffer_-832, align 8
  %5 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 100
  br i1 %7, label %dec_label_pc_549a0.lr.ph, label %dec_label_pc_54934.dec_label_pc_549db_crit_edge

dec_label_pc_54934.dec_label_pc_549db_crit_edge:  ; preds = %dec_label_pc_54934
  %.pre = bitcast ptr %dataGoodBuffer_-840 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_549db

dec_label_pc_549a0.lr.ph:                         ; preds = %dec_label_pc_54934
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %9 = bitcast ptr %dataGoodBuffer_-840 to ptr
  %10 = add i64 %8, -416
  store i64 %6, ptr %.reg2mem, align 8
  br label %dec_label_pc_549a0

dec_label_pc_549a0:                               ; preds = %dec_label_pc_549a0.lr.ph, %dec_label_pc_549a0
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = mul i64 %.reload, 4
  %12 = load i64, ptr %9, align 8
  %13 = add i64 %12, %11
  %14 = add i64 %10, %11
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = load i64, ptr %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = insertvalue [100 x i32] undef, i32 %20, 0
  store [100 x i32] %21, ptr %dataGoodBuffer_-832, align 8
  %22 = load i64, ptr %5, align 8
  %23 = icmp ult i64 %22, 100
  store i64 %22, ptr %.reg2mem, align 8
  store ptr %9, ptr %.pre-phi.reg2mem, align 8
  br i1 %23, label %dec_label_pc_549a0, label %dec_label_pc_549db

dec_label_pc_549db:                               ; preds = %dec_label_pc_549a0, %dec_label_pc_54934.dec_label_pc_549db_crit_edge
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %24 = load i64, ptr %.pre-phi.reload, align 8
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_54a00, label %dec_label_pc_549fb

dec_label_pc_549fb:                               ; preds = %dec_label_pc_549db
  call void @__stack_chk_fail()
  br label %dec_label_pc_54a00

dec_label_pc_54a00:                               ; preds = %dec_label_pc_549fb, %dec_label_pc_549db
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

