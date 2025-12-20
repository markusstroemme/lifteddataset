@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1e266:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataGoodBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1e2af

dec_label_pc_1e2af:                               ; preds = %dec_label_pc_1e2af, %dec_label_pc_1e266
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1e2c6, label %dec_label_pc_1e2af

dec_label_pc_1e2c6:                               ; preds = %dec_label_pc_1e2af
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-56, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1e331

dec_label_pc_1e331:                               ; preds = %dec_label_pc_1e331, %dec_label_pc_1e2c6
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_1e348, label %dec_label_pc_1e331

dec_label_pc_1e348:                               ; preds = %dec_label_pc_1e331
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %13 = bitcast ptr %stack_var_-27 to ptr
  %14 = call i32 @strlen(ptr nonnull %13)
  %15 = add i32 %14, 1
  %16 = inttoptr i64 %11 to ptr
  %17 = call ptr @memmove(ptr %16, ptr nonnull %stack_var_-27, i32 %15)
  call void @printLine(ptr %12)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_1e3f1, label %dec_label_pc_1e3ec

dec_label_pc_1e3ec:                               ; preds = %dec_label_pc_1e348
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e3f1

dec_label_pc_1e3f1:                               ; preds = %dec_label_pc_1e3ec, %dec_label_pc_1e348
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

