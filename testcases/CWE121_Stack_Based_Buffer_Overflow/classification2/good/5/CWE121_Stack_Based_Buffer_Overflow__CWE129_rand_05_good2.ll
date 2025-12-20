@global_var_b8588 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef038 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_40037:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef038, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4012e, label %dec_label_pc_400ad

dec_label_pc_400ad:                               ; preds = %dec_label_pc_40037
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %.pr = load i32, ptr @global_var_ef038, align 4
  %7 = icmp eq i32 %.pr, 0
  br i1 %7, label %dec_label_pc_4012e, label %dec_label_pc_400b7

dec_label_pc_400b7:                               ; preds = %dec_label_pc_400ad
  %8 = urem i32 %3, 2
  %9 = icmp eq i32 %8, 0
  %10 = mul i32 %4, 1073741824
  %11 = mul i32 %5, 32768
  %12 = xor i32 %11, %10
  %13 = xor i32 %12, %6
  %14 = sext i1 %9 to i32
  %storemerge1.in = xor i32 %13, %14
  %15 = icmp ugt i32 %storemerge1.in, 9
  br i1 %15, label %dec_label_pc_4011d, label %dec_label_pc_400eb

dec_label_pc_400eb:                               ; preds = %dec_label_pc_400b7
  %16 = ptrtoint ptr %stack_var_-8 to i64
  %17 = sext i32 %storemerge1.in to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -64
  %20 = add i64 %18, %19
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_40101

dec_label_pc_40101:                               ; preds = %dec_label_pc_40101, %dec_label_pc_400eb
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %22 = mul i64 %indvars.iv.reload, 4
  %23 = add i64 %22, %19
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4012e, label %dec_label_pc_40101

dec_label_pc_4011d:                               ; preds = %dec_label_pc_400b7
  call void @printLine(ptr @global_var_b8588)
  br label %dec_label_pc_4012e

dec_label_pc_4012e:                               ; preds = %dec_label_pc_40101, %dec_label_pc_40037, %dec_label_pc_4011d, %dec_label_pc_400ad
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_40143, label %dec_label_pc_4013e

dec_label_pc_4013e:                               ; preds = %dec_label_pc_4012e
  call void @__stack_chk_fail()
  br label %dec_label_pc_40143

dec_label_pc_40143:                               ; preds = %dec_label_pc_4013e, %dec_label_pc_4012e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

