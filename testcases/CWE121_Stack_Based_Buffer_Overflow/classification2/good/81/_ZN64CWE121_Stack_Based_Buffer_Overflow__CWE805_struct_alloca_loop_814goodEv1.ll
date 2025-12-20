@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_e5308 = external global %vtable_e5308_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9a4a4:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_9a4ef

dec_label_pc_9a4ef:                               ; preds = %dec_label_pc_9a4ef, %dec_label_pc_9a4a4
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_9a506, label %dec_label_pc_9a4ef

dec_label_pc_9a506:                               ; preds = %dec_label_pc_9a4ef
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_9a573

dec_label_pc_9a573:                               ; preds = %dec_label_pc_9a573, %dec_label_pc_9a506
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_9a58a, label %dec_label_pc_9a573

dec_label_pc_9a58a:                               ; preds = %dec_label_pc_9a573
  store i64 ptrtoint (ptr @global_var_e5308 to i64), ptr %stack_var_-56, align 8
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_9a611, label %dec_label_pc_9a60c

dec_label_pc_9a60c:                               ; preds = %dec_label_pc_9a58a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9a611

dec_label_pc_9a611:                               ; preds = %dec_label_pc_9a60c, %dec_label_pc_9a58a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

