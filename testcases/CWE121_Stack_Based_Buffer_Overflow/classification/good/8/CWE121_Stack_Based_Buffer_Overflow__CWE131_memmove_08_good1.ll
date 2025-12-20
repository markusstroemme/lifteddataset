@global_var_1000 = external global ptr
@global_var_b920e = external constant [21 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define i32 @staticReturnsFalse.925() local_unnamed_addr {
dec_label_pc_56bc3:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_56ced:
  %stack_var_-64.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @staticReturnsFalse.925()
  %3 = icmp eq i32 %2, 0
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_56d60, label %dec_label_pc_56d1e

dec_label_pc_56d1e:                               ; preds = %dec_label_pc_56ced
  call void @printLine(ptr @global_var_b920e)
  store i64 0, ptr %stack_var_-64.0.reg2mem, align 8
  br label %dec_label_pc_56db4

dec_label_pc_56d60:                               ; preds = %dec_label_pc_56ced, %dec_label_pc_56d60
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %0
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_56d77, label %dec_label_pc_56d60

dec_label_pc_56d77:                               ; preds = %dec_label_pc_56d60
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %6 = add i64 %0, %constexpr3
  %7 = and i64 %6, -16
  store i64 %7, ptr %stack_var_-64.0.reg2mem, align 8
  br label %dec_label_pc_56db4

dec_label_pc_56db4:                               ; preds = %dec_label_pc_56d77, %dec_label_pc_56d1e
  %stack_var_-64.0.reload = load i64, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %8 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-56, i32 40)
  %10 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %11 = load i32, ptr %10, align 16
  call void @printIntLine(i32 %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_56e16, label %dec_label_pc_56e11

dec_label_pc_56e11:                               ; preds = %dec_label_pc_56db4
  call void @__stack_chk_fail()
  br label %dec_label_pc_56e16

dec_label_pc_56e16:                               ; preds = %dec_label_pc_56e11, %dec_label_pc_56db4
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

