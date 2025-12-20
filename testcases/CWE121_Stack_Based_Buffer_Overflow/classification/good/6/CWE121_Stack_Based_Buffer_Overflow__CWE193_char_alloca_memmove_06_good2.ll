@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1ad94:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1addd

dec_label_pc_1addd:                               ; preds = %dec_label_pc_1addd, %dec_label_pc_1ad94
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1adf4, label %dec_label_pc_1addd

dec_label_pc_1adf4:                               ; preds = %dec_label_pc_1addd
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1ae5f

dec_label_pc_1ae5f:                               ; preds = %dec_label_pc_1ae5f, %dec_label_pc_1adf4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1ae76, label %dec_label_pc_1ae5f

dec_label_pc_1ae76:                               ; preds = %dec_label_pc_1ae5f
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
  %10 = bitcast ptr %stack_var_-27 to ptr
  %11 = call i32 @strlen(ptr nonnull %10)
  %12 = add i32 %11, 1
  %13 = load ptr, ptr %dataBadBuffer_-56, align 8
  %14 = bitcast ptr %13 to ptr
  %15 = call ptr @memmove(ptr %14, ptr nonnull %stack_var_-27, i32 %12)
  %16 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_1af28, label %dec_label_pc_1af23

dec_label_pc_1af23:                               ; preds = %dec_label_pc_1ae76
  call void @__stack_chk_fail()
  br label %dec_label_pc_1af28

dec_label_pc_1af28:                               ; preds = %dec_label_pc_1af23, %dec_label_pc_1ae76
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

