@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25356:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2539f

dec_label_pc_2539f:                               ; preds = %dec_label_pc_2539f, %dec_label_pc_25356
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_253b6, label %dec_label_pc_2539f

dec_label_pc_253b6:                               ; preds = %dec_label_pc_2539f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_25421

dec_label_pc_25421:                               ; preds = %dec_label_pc_25421, %dec_label_pc_253b6
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_25438, label %dec_label_pc_25421

dec_label_pc_25438:                               ; preds = %dec_label_pc_25421
  %7 = call i32 @globalReturnsTrue()
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_25492, label %dec_label_pc_25483

dec_label_pc_25483:                               ; preds = %dec_label_pc_25438
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %10, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_25492

dec_label_pc_25492:                               ; preds = %dec_label_pc_25483, %dec_label_pc_25438
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %13 = bitcast ptr %stack_var_-27 to ptr
  %14 = call i32 @strlen(ptr nonnull %13)
  %15 = add i32 %14, 1
  %16 = load ptr, ptr %dataBadBuffer_-56, align 8
  %17 = call ptr @strncpy(ptr %16, ptr nonnull %13, i32 %15)
  %18 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_254ee, label %dec_label_pc_254e9

dec_label_pc_254e9:                               ; preds = %dec_label_pc_25492
  call void @__stack_chk_fail()
  br label %dec_label_pc_254ee

dec_label_pc_254ee:                               ; preds = %dec_label_pc_254e9, %dec_label_pc_25492
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_4f483:
  ret i32 1
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

