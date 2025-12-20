@global_var_1000 = external global ptr
@0 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3da9d:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3daee

dec_label_pc_3daee:                               ; preds = %dec_label_pc_3daee, %dec_label_pc_3da9d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3db05, label %dec_label_pc_3daee

dec_label_pc_3db05:                               ; preds = %dec_label_pc_3daee
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3db70

dec_label_pc_3db70:                               ; preds = %dec_label_pc_3db70, %dec_label_pc_3db05
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3db87, label %dec_label_pc_3db70

dec_label_pc_3db87:                               ; preds = %dec_label_pc_3db70
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store ptr %9, ptr %stack_var_-88, align 8
  store i8 0, ptr %9, align 16
  %10 = load ptr, ptr %stack_var_-88, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %11 = bitcast ptr %stack_var_-27 to ptr
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %dec_label_pc_3dc3e, label %dec_label_pc_3dc10.lr.ph

dec_label_pc_3dc10.lr.ph:                         ; preds = %dec_label_pc_3db87
  %16 = ptrtoint ptr %10 to i64
  %17 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3dc10

dec_label_pc_3dc10:                               ; preds = %dec_label_pc_3dc10, %dec_label_pc_3dc10.lr.ph
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %18 = add i64 %storemerge3.reload, %16
  %19 = add i64 %storemerge3.reload, %17
  %20 = inttoptr i64 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = inttoptr i64 %18 to ptr
  store i8 %21, ptr %22, align 1
  %23 = add nuw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %23, %14
  store i64 %23, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3dc3e, label %dec_label_pc_3dc10

dec_label_pc_3dc3e:                               ; preds = %dec_label_pc_3dc10, %dec_label_pc_3db87
  call void @printLine(ptr %10)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_3dc5f, label %dec_label_pc_3dc5a

dec_label_pc_3dc5a:                               ; preds = %dec_label_pc_3dc3e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3dc5f

dec_label_pc_3dc5f:                               ; preds = %dec_label_pc_3dc5a, %dec_label_pc_3dc3e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

