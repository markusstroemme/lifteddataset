@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2550f:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_25558

dec_label_pc_25558:                               ; preds = %dec_label_pc_25558, %dec_label_pc_2550f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2556f, label %dec_label_pc_25558

dec_label_pc_2556f:                               ; preds = %dec_label_pc_25558
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_255da

dec_label_pc_255da:                               ; preds = %dec_label_pc_255da, %dec_label_pc_2556f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_255f1, label %dec_label_pc_255da

dec_label_pc_255f1:                               ; preds = %dec_label_pc_255da
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_2564d, label %dec_label_pc_2563c

dec_label_pc_2563c:                               ; preds = %dec_label_pc_255f1
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_2565c

dec_label_pc_2564d:                               ; preds = %dec_label_pc_255f1
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %13 = add i64 %4, %constexpr5
  %14 = and i64 %13, -16
  %15 = inttoptr i64 %14 to ptr
  %16 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %14, ptr %16, align 8
  store i8 0, ptr %15, align 16
  br label %dec_label_pc_2565c

dec_label_pc_2565c:                               ; preds = %dec_label_pc_2564d, %dec_label_pc_2563c
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %17 = bitcast ptr %stack_var_-27 to ptr
  %18 = call i32 @strlen(ptr nonnull %17)
  %19 = add i32 %18, 1
  %20 = load ptr, ptr %dataBadBuffer_-56, align 8
  %21 = call ptr @strncpy(ptr %20, ptr nonnull %17, i32 %19)
  %22 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  br i1 %24, label %dec_label_pc_256b8, label %dec_label_pc_256b3

dec_label_pc_256b3:                               ; preds = %dec_label_pc_2565c
  call void @__stack_chk_fail()
  br label %dec_label_pc_256b8

dec_label_pc_256b8:                               ; preds = %dec_label_pc_256b3, %dec_label_pc_2565c
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4f4a1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

