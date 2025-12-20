@global_var_1000 = external global ptr
@global_var_81440 = external constant [3 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3af49:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3af95

dec_label_pc_3af95:                               ; preds = %dec_label_pc_3af95, %dec_label_pc_3af49
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3afac, label %dec_label_pc_3af95

dec_label_pc_3afac:                               ; preds = %dec_label_pc_3af95
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3b017

dec_label_pc_3b017:                               ; preds = %dec_label_pc_3b017, %dec_label_pc_3afac
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3b02e, label %dec_label_pc_3b017

dec_label_pc_3b02e:                               ; preds = %dec_label_pc_3b017
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_3b090, label %dec_label_pc_3b079

dec_label_pc_3b079:                               ; preds = %dec_label_pc_3b02e
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_3b0a5

dec_label_pc_3b090:                               ; preds = %dec_label_pc_3b02e
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %12 = add i64 %4, %constexpr5
  %13 = and i64 %12, -16
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 16
  store ptr %14, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_3b0a5

dec_label_pc_3b0a5:                               ; preds = %dec_label_pc_3b090, %dec_label_pc_3b079
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %15 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %dataGoodBuffer_-144.0.reload, i32 100, ptr @global_var_81440, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %dataGoodBuffer_-144.0.reload)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_3b10a, label %dec_label_pc_3b105

dec_label_pc_3b105:                               ; preds = %dec_label_pc_3b0a5
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b10a

dec_label_pc_3b10a:                               ; preds = %dec_label_pc_3b105, %dec_label_pc_3b0a5
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6decb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

