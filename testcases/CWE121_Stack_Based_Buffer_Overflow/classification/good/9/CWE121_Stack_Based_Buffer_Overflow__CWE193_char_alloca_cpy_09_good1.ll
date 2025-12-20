@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_68c84:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_68ccd

dec_label_pc_68ccd:                               ; preds = %dec_label_pc_68ccd, %dec_label_pc_68c84
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_68ce4, label %dec_label_pc_68ccd

dec_label_pc_68ce4:                               ; preds = %dec_label_pc_68ccd
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_68d4f

dec_label_pc_68d4f:                               ; preds = %dec_label_pc_68d4f, %dec_label_pc_68ce4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_68d66, label %dec_label_pc_68d4f

dec_label_pc_68d66:                               ; preds = %dec_label_pc_68d4f
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %8, ptr %9, align 8
  %.cast = inttoptr i64 %8 to ptr
  store i8 0, ptr %.cast, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %10 = load ptr, ptr %dataBadBuffer_-56, align 8
  %11 = bitcast ptr %stack_var_-27 to ptr
  %12 = call ptr @strcpy(ptr %10, ptr nonnull %11)
  %13 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_68e19, label %dec_label_pc_68e14

dec_label_pc_68e14:                               ; preds = %dec_label_pc_68d66
  call void @__stack_chk_fail()
  br label %dec_label_pc_68e19

dec_label_pc_68e19:                               ; preds = %dec_label_pc_68e14, %dec_label_pc_68d66
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

