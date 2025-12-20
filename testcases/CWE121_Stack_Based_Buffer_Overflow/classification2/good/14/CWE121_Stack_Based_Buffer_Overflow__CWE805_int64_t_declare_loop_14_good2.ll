@global_var_bb9b5 = external constant [5 x i8]
@global_var_e6094 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2c2d3:
  %0 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_e6094, align 4
  %4 = icmp eq i32 %3, 5
  %5 = icmp eq i1 %4, false
  %6 = ptrtoint ptr %stack_var_-1624 to i64
  %spec.select = select i1 %5, i64 %1, i64 %6
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  store [100 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataGoodBuffer_-1632, align 8
  %8 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %9, 100
  br i1 %10, label %dec_label_pc_2c32e.lr.ph, label %dec_label_pc_2c36b

dec_label_pc_2c32e.lr.ph:                         ; preds = %dec_label_pc_2c2d3
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = add i64 %11, -816
  store i64 %9, ptr %.reg2mem, align 8
  br label %dec_label_pc_2c32e

dec_label_pc_2c32e:                               ; preds = %dec_label_pc_2c32e.lr.ph, %dec_label_pc_2c32e
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = mul i64 %.reload, 8
  %14 = add i64 %13, %spec.select
  %15 = add i64 %12, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i64, ptr %16, align 8
  %18 = inttoptr i64 %14 to ptr
  store i64 %17, ptr %18, align 8
  %19 = load i64, ptr %8, align 8
  %20 = add i64 %19, 1
  %21 = insertvalue [100 x i64] undef, i64 %20, 0
  store [100 x i64] %21, ptr %dataGoodBuffer_-1632, align 8
  %22 = load i64, ptr %8, align 8
  %23 = icmp ult i64 %22, 100
  store i64 %22, ptr %.reg2mem, align 8
  br i1 %23, label %dec_label_pc_2c32e, label %dec_label_pc_2c36b

dec_label_pc_2c36b:                               ; preds = %dec_label_pc_2c32e, %dec_label_pc_2c2d3
  %24 = inttoptr i64 %spec.select to ptr
  %25 = load i64, ptr %24, align 8
  call void @printLongLongLine(i64 %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %2, %26
  br i1 %27, label %dec_label_pc_2c392, label %dec_label_pc_2c38d

dec_label_pc_2c38d:                               ; preds = %dec_label_pc_2c36b
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c392

dec_label_pc_2c392:                               ; preds = %dec_label_pc_2c38d, %dec_label_pc_2c36b
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

