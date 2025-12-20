@global_var_1000 = external global ptr
@0 = external global i32
@global_var_fff = external global i32
@global_var_9e380 = external global %vtable_9e380_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_64ff1:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6503a

dec_label_pc_6503a:                               ; preds = %dec_label_pc_6503a, %dec_label_pc_64ff1
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_65051, label %dec_label_pc_6503a

dec_label_pc_65051:                               ; preds = %dec_label_pc_6503a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_650bc

dec_label_pc_650bc:                               ; preds = %dec_label_pc_650bc, %dec_label_pc_65051
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_650d3, label %dec_label_pc_650bc

dec_label_pc_650d3:                               ; preds = %dec_label_pc_650bc
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store i64 ptrtoint (ptr @global_var_9e380 to i64), ptr %stack_var_-56, align 8
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_65161, label %dec_label_pc_6515c

dec_label_pc_6515c:                               ; preds = %dec_label_pc_650d3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_65161

dec_label_pc_65161:                               ; preds = %dec_label_pc_6515c, %dec_label_pc_650d3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

