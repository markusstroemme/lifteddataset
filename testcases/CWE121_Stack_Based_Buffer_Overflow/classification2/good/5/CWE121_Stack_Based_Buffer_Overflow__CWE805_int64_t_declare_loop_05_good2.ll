@global_var_bb9b5 = external constant [5 x i8]
@global_var_e6030 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2ad58:
  %0 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_e6030, align 4
  %4 = icmp eq i32 %3, 0
  %5 = ptrtoint ptr %stack_var_-1624 to i64
  %spec.select = select i1 %4, i64 %1, i64 %5
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  store [100 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataGoodBuffer_-1632, align 8
  %7 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %8, 100
  br i1 %9, label %dec_label_pc_2adb2.lr.ph, label %dec_label_pc_2adef

dec_label_pc_2adb2.lr.ph:                         ; preds = %dec_label_pc_2ad58
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = add i64 %10, -816
  store i64 %8, ptr %.reg2mem, align 8
  br label %dec_label_pc_2adb2

dec_label_pc_2adb2:                               ; preds = %dec_label_pc_2adb2.lr.ph, %dec_label_pc_2adb2
  %.reload = load i64, ptr %.reg2mem, align 8
  %12 = mul i64 %.reload, 8
  %13 = add i64 %12, %spec.select
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %13 to ptr
  store i64 %16, ptr %17, align 8
  %18 = load i64, ptr %7, align 8
  %19 = add i64 %18, 1
  %20 = insertvalue [100 x i64] undef, i64 %19, 0
  store [100 x i64] %20, ptr %dataGoodBuffer_-1632, align 8
  %21 = load i64, ptr %7, align 8
  %22 = icmp ult i64 %21, 100
  store i64 %21, ptr %.reg2mem, align 8
  br i1 %22, label %dec_label_pc_2adb2, label %dec_label_pc_2adef

dec_label_pc_2adef:                               ; preds = %dec_label_pc_2adb2, %dec_label_pc_2ad58
  %23 = inttoptr i64 %spec.select to ptr
  %24 = load i64, ptr %23, align 8
  call void @printLongLongLine(i64 %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %2, %25
  br i1 %26, label %dec_label_pc_2ae16, label %dec_label_pc_2ae11

dec_label_pc_2ae11:                               ; preds = %dec_label_pc_2adef
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ae16

dec_label_pc_2ae16:                               ; preds = %dec_label_pc_2ae11, %dec_label_pc_2adef
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

