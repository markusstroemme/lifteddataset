@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2c77a:
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-1232 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %dataBadBuffer_-1240 = alloca [50 x i64], align 8
  %stack_var_-1224 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-1224 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-1240, align 8
  %3 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 100)
  store [50 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataBadBuffer_-1232, align 8
  %4 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-1232, i64 0, i64 0
  %5 = load i64, ptr %4, align 8
  %6 = icmp ult i64 %5, 100
  br i1 %6, label %dec_label_pc_2c7e6.lr.ph, label %dec_label_pc_2c823

dec_label_pc_2c7e6.lr.ph:                         ; preds = %dec_label_pc_2c77a
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %8 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-1240, i64 0, i64 0
  %9 = add i64 %7, -816
  store i64 %5, ptr %.reg2mem, align 8
  br label %dec_label_pc_2c7e6

dec_label_pc_2c7e6:                               ; preds = %dec_label_pc_2c7e6.lr.ph, %dec_label_pc_2c7e6
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = mul i64 %.reload, 8
  %11 = load i64, ptr %8, align 8
  %12 = add i64 %11, %10
  %13 = add i64 %9, %10
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = inttoptr i64 %12 to ptr
  store i64 %15, ptr %16, align 8
  %17 = load i64, ptr %4, align 8
  %18 = add i64 %17, 1
  %19 = insertvalue [50 x i64] undef, i64 %18, 0
  store [50 x i64] %19, ptr %dataBadBuffer_-1232, align 8
  %20 = load i64, ptr %4, align 8
  %21 = icmp ult i64 %20, 100
  store i64 %20, ptr %.reg2mem, align 8
  br i1 %21, label %dec_label_pc_2c7e6, label %dec_label_pc_2c823

dec_label_pc_2c823:                               ; preds = %dec_label_pc_2c7e6, %dec_label_pc_2c77a
  %22 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-1240, i64 0, i64 0
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %23 to ptr
  %25 = load i64, ptr %24, align 8
  call void @printLongLongLine(i64 %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_2c84a, label %dec_label_pc_2c845

dec_label_pc_2c845:                               ; preds = %dec_label_pc_2c823
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c84a

dec_label_pc_2c84a:                               ; preds = %dec_label_pc_2c845, %dec_label_pc_2c823
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

