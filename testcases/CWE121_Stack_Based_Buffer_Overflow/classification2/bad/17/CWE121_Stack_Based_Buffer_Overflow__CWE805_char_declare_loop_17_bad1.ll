define void @anon0() local_unnamed_addr {
dec_label_pc_4317b:
  %.lcssa.reg2mem = alloca i64, align 8
  %.reg2mem8 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-200 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-184 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  %4 = bitcast ptr %dataBadBuffer_-200 to ptr
  store [50 x i8] %3, ptr %dataBadBuffer_-200, align 8
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [50 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataBadBuffer_-192, align 8
  %8 = bitcast ptr %dataBadBuffer_-192 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %9, 100
  %11 = load i64, ptr %4, align 8
  store i64 %11, ptr %.lcssa.reg2mem, align 8
  br i1 %10, label %dec_label_pc_431a2.lr.ph, label %dec_label_pc_431d8

dec_label_pc_431a2.lr.ph:                         ; preds = %dec_label_pc_4317b
  %12 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %11, ptr %.reg2mem, align 8
  store i64 %9, ptr %.reg2mem8, align 8
  br label %dec_label_pc_431a2

dec_label_pc_431a2:                               ; preds = %dec_label_pc_431a2.lr.ph, %dec_label_pc_431a2
  %.reload9 = load i64, ptr %.reg2mem8, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = add i64 %.reload9, %.reload
  %14 = add i64 %.reload9, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = inttoptr i64 %13 to ptr
  store i8 %16, ptr %17, align 1
  %18 = load i64, ptr %8, align 8
  %19 = trunc i64 %18 to i8
  %20 = add i8 %19, 1
  %21 = insertvalue [50 x i8] undef, i8 %20, 0
  store [50 x i8] %21, ptr %dataBadBuffer_-192, align 8
  %22 = load i64, ptr %8, align 8
  %23 = icmp ult i64 %22, 100
  %24 = load i64, ptr %4, align 8
  store i64 %24, ptr %.reg2mem, align 8
  store i64 %22, ptr %.reg2mem8, align 8
  store i64 %24, ptr %.lcssa.reg2mem, align 8
  br i1 %23, label %dec_label_pc_431a2, label %dec_label_pc_431d8

dec_label_pc_431d8:                               ; preds = %dec_label_pc_431a2, %dec_label_pc_4317b
  %.lcssa.reload = load i64, ptr %.lcssa.reg2mem, align 8
  %25 = add i64 %.lcssa.reload, 99
  %26 = inttoptr i64 %25 to ptr
  store i8 0, ptr %26, align 1
  %27 = load i64, ptr %4, align 8
  %28 = inttoptr i64 %27 to ptr
  call void @printLine(ptr %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  br i1 %30, label %dec_label_pc_4320a, label %dec_label_pc_43205

dec_label_pc_43205:                               ; preds = %dec_label_pc_431d8
  call void @__stack_chk_fail()
  br label %dec_label_pc_4320a

dec_label_pc_4320a:                               ; preds = %dec_label_pc_43205, %dec_label_pc_431d8
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

