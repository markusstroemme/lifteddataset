@global_var_1000 = external global ptr
@global_var_fff = external global i32

define i32 @staticReturnsTrue.226() local_unnamed_addr {
dec_label_pc_24111:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2412f:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_24178

dec_label_pc_24178:                               ; preds = %dec_label_pc_24178, %dec_label_pc_2412f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2418f, label %dec_label_pc_24178

dec_label_pc_2418f:                               ; preds = %dec_label_pc_24178
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_241fa

dec_label_pc_241fa:                               ; preds = %dec_label_pc_241fa, %dec_label_pc_2418f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_24211, label %dec_label_pc_241fa

dec_label_pc_24211:                               ; preds = %dec_label_pc_241fa
  %9 = call i32 @staticReturnsTrue.226()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_2426b, label %dec_label_pc_2425c

dec_label_pc_2425c:                               ; preds = %dec_label_pc_24211
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_2426b

dec_label_pc_2426b:                               ; preds = %dec_label_pc_2425c, %dec_label_pc_24211
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
  br i1 %20, label %dec_label_pc_242c7, label %dec_label_pc_242c2

dec_label_pc_242c2:                               ; preds = %dec_label_pc_2426b
  call void @__stack_chk_fail()
  br label %dec_label_pc_242c7

dec_label_pc_242c7:                               ; preds = %dec_label_pc_242c2, %dec_label_pc_2426b
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

