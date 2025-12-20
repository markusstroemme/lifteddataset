@global_var_1000 = external global ptr
@global_var_8145b = external constant [3 x i8]
@global_var_8145e = external constant [21 x i8]
@global_var_fff = external global i32
@global_var_9f074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3b9b8:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3ba04

dec_label_pc_3ba04:                               ; preds = %dec_label_pc_3ba04, %dec_label_pc_3b9b8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3ba1b, label %dec_label_pc_3ba04

dec_label_pc_3ba1b:                               ; preds = %dec_label_pc_3ba04
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3ba86

dec_label_pc_3ba86:                               ; preds = %dec_label_pc_3ba86, %dec_label_pc_3ba1b
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3ba9d, label %dec_label_pc_3ba86

dec_label_pc_3ba9d:                               ; preds = %dec_label_pc_3ba86
  %7 = load i32, ptr @global_var_9f074, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %dec_label_pc_3baf6, label %dec_label_pc_3bae5

dec_label_pc_3bae5:                               ; preds = %dec_label_pc_3ba9d
  call void @printLine(ptr @global_var_8145e)
  br label %dec_label_pc_3bb0b

dec_label_pc_3baf6:                               ; preds = %dec_label_pc_3ba9d
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_3bb0b

dec_label_pc_3bb0b:                               ; preds = %dec_label_pc_3baf6, %dec_label_pc_3bae5
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %dataGoodBuffer_-144.0.reload, i32 100, ptr @global_var_8145b, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_3bb70, label %dec_label_pc_3bb6b

dec_label_pc_3bb6b:                               ; preds = %dec_label_pc_3bb0b
  call void @__stack_chk_fail()
  br label %dec_label_pc_3bb70

dec_label_pc_3bb70:                               ; preds = %dec_label_pc_3bb6b, %dec_label_pc_3bb0b
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

