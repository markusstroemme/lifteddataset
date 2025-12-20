@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_28f34:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_28f80

dec_label_pc_28f80:                               ; preds = %dec_label_pc_28f80, %dec_label_pc_28f34
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_28f97, label %dec_label_pc_28f80

dec_label_pc_28f97:                               ; preds = %dec_label_pc_28f80
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_29002

dec_label_pc_29002:                               ; preds = %dec_label_pc_29002, %dec_label_pc_28f97
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_29019, label %dec_label_pc_29002

dec_label_pc_29019:                               ; preds = %dec_label_pc_29002
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_2907b, label %dec_label_pc_29064

dec_label_pc_29064:                               ; preds = %dec_label_pc_29019
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_29090

dec_label_pc_2907b:                               ; preds = %dec_label_pc_29019
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %12 = add i64 %4, %constexpr5
  %13 = and i64 %12, -16
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 16
  store ptr %14, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_29090

dec_label_pc_29090:                               ; preds = %dec_label_pc_2907b, %dec_label_pc_29064
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %15 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %16 = bitcast ptr %stack_var_-120 to ptr
  %17 = call ptr @strncat(ptr nonnull %dataGoodBuffer_-144.0.reload, ptr nonnull %16, i32 100)
  call void @printLine(ptr nonnull %dataGoodBuffer_-144.0.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_290e9, label %dec_label_pc_290e4

dec_label_pc_290e4:                               ; preds = %dec_label_pc_29090
  call void @__stack_chk_fail()
  br label %dec_label_pc_290e9

dec_label_pc_290e9:                               ; preds = %dec_label_pc_290e4, %dec_label_pc_29090
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

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

