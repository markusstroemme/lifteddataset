@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_69aeb:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_69b34

dec_label_pc_69b34:                               ; preds = %dec_label_pc_69b34, %dec_label_pc_69aeb
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_69b4b, label %dec_label_pc_69b34

dec_label_pc_69b4b:                               ; preds = %dec_label_pc_69b34
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_69bb6

dec_label_pc_69bb6:                               ; preds = %dec_label_pc_69bb6, %dec_label_pc_69b4b
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_69bcd, label %dec_label_pc_69bb6

dec_label_pc_69bcd:                               ; preds = %dec_label_pc_69bb6
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %8, ptr %10, align 8
  %.cast2 = inttoptr i64 %8 to ptr
  store i8 0, ptr %.cast2, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %11 = load ptr, ptr %dataBadBuffer_-56, align 8
  %12 = bitcast ptr %stack_var_-27 to ptr
  %13 = call ptr @strcpy(ptr %11, ptr nonnull %12)
  %14 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_69c84, label %dec_label_pc_69c7f

dec_label_pc_69c7f:                               ; preds = %dec_label_pc_69bcd
  call void @__stack_chk_fail()
  br label %dec_label_pc_69c84

dec_label_pc_69c84:                               ; preds = %dec_label_pc_69c7f, %dec_label_pc_69bcd
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

