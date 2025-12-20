@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_69950:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_69999

dec_label_pc_69999:                               ; preds = %dec_label_pc_69999, %dec_label_pc_69950
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_699b0, label %dec_label_pc_69999

dec_label_pc_699b0:                               ; preds = %dec_label_pc_69999
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_69a1b

dec_label_pc_69a1b:                               ; preds = %dec_label_pc_69a1b, %dec_label_pc_699b0
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_69a32, label %dec_label_pc_69a1b

dec_label_pc_69a32:                               ; preds = %dec_label_pc_69a1b
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_69a8e, label %dec_label_pc_69a7d

dec_label_pc_69a7d:                               ; preds = %dec_label_pc_69a32
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_69a9d

dec_label_pc_69a8e:                               ; preds = %dec_label_pc_69a32
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
  br label %dec_label_pc_69a9d

dec_label_pc_69a9d:                               ; preds = %dec_label_pc_69a8e, %dec_label_pc_69a7d
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %17 = load ptr, ptr %dataBadBuffer_-56, align 8
  %18 = bitcast ptr %stack_var_-27 to ptr
  %19 = call ptr @strcpy(ptr %17, ptr nonnull %18)
  %20 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_69ae9, label %dec_label_pc_69ae4

dec_label_pc_69ae4:                               ; preds = %dec_label_pc_69a9d
  call void @__stack_chk_fail()
  br label %dec_label_pc_69ae9

dec_label_pc_69ae9:                               ; preds = %dec_label_pc_69ae4, %dec_label_pc_69a9d
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

