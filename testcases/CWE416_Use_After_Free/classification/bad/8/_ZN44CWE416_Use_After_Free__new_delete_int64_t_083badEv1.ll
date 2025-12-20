@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.414() local_unnamed_addr {
dec_label_pc_3288a:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_328a8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.414()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_328f9, label %dec_label_pc_328ca

dec_label_pc_328ca:                               ; preds = %dec_label_pc_328a8
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = icmp eq i64 %4, 0
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_328f9, label %dec_label_pc_328ec

dec_label_pc_328ec:                               ; preds = %dec_label_pc_328ca
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_328f9

dec_label_pc_328f9:                               ; preds = %dec_label_pc_328ec, %dec_label_pc_328ca, %dec_label_pc_328a8
  %8 = call i32 @staticReturnsTrue.414()
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i1 %9, false
  %11 = zext i1 %10 to i64
  %12 = and i32 %8, -256
  %13 = sext i32 %12 to i64
  %14 = or i64 %11, %13
  %15 = icmp eq i1 %10, false
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_32916, label %dec_label_pc_32907

dec_label_pc_32907:                               ; preds = %dec_label_pc_328f9
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %16 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLongLine(i64 %16)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32916

dec_label_pc_32916:                               ; preds = %dec_label_pc_32907, %dec_label_pc_328f9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

