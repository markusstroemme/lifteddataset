@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_7fc8:
  %.lcssa.reg2mem = alloca ptr, align 8
  %.reg2mem7 = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_8011

dec_label_pc_8011:                                ; preds = %dec_label_pc_8011, %dec_label_pc_7fc8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8028, label %dec_label_pc_8011

dec_label_pc_8028:                                ; preds = %dec_label_pc_8011
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_8093

dec_label_pc_8093:                                ; preds = %dec_label_pc_8093, %dec_label_pc_8028
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_80aa, label %dec_label_pc_8093

dec_label_pc_80aa:                                ; preds = %dec_label_pc_8093
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = bitcast ptr %stack_var_-72 to ptr
  store i64 %8, ptr %9, align 8
  %.cast = inttoptr i64 %8 to ptr
  store i8 0, ptr %.cast, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %10 = bitcast ptr %stack_var_-27 to ptr
  %11 = call i32 @strlen(ptr nonnull %10)
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, 1
  %14 = icmp eq i64 %13, 0
  %15 = load ptr, ptr %stack_var_-72, align 8
  store ptr %15, ptr %.lcssa.reg2mem, align 8
  br i1 %14, label %dec_label_pc_815f, label %dec_label_pc_8131.lr.ph

dec_label_pc_8131.lr.ph:                          ; preds = %dec_label_pc_80aa
  %16 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %15, ptr %.reg2mem, align 8
  store i64 0, ptr %.reg2mem7, align 8
  br label %dec_label_pc_8131

dec_label_pc_8131:                                ; preds = %dec_label_pc_8131, %dec_label_pc_8131.lr.ph
  %.reload8 = load i64, ptr %.reg2mem7, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %17 = ptrtoint ptr %.reload to i64
  %18 = add i64 %.reload8, %17
  %19 = add i64 %.reload8, %16
  %20 = inttoptr i64 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = inttoptr i64 %18 to ptr
  store i8 %21, ptr %22, align 1
  %23 = add nuw i64 %.reload8, 1
  %24 = load ptr, ptr %stack_var_-72, align 8
  %exitcond = icmp eq i64 %23, %13
  store ptr %24, ptr %.reg2mem, align 8
  store i64 %23, ptr %.reg2mem7, align 8
  store ptr %24, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_815f, label %dec_label_pc_8131

dec_label_pc_815f:                                ; preds = %dec_label_pc_8131, %dec_label_pc_80aa
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_8180, label %dec_label_pc_817b

dec_label_pc_817b:                                ; preds = %dec_label_pc_815f
  call void @__stack_chk_fail()
  br label %dec_label_pc_8180

dec_label_pc_8180:                                ; preds = %dec_label_pc_817b, %dec_label_pc_815f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

