@global_var_4a505 = external constant [21 x i8]
@global_var_4a95b = external constant [6 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.410() local_unnamed_addr {
dec_label_pc_2db92:
  ret i32 1
}

define i32 @staticReturnsFalse.411() local_unnamed_addr {
dec_label_pc_2dba1:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2dce3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsFalse.411()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2dd16, label %dec_label_pc_2dd05

dec_label_pc_2dd05:                               ; preds = %dec_label_pc_2dce3
  call void @printLine(ptr @global_var_4a505)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2dd2b

dec_label_pc_2dd16:                               ; preds = %dec_label_pc_2dce3
  %4 = call i64 @_Znwm(i64 1)
  %5 = inttoptr i64 %4 to ptr
  store i8 65, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2dd2b

dec_label_pc_2dd2b:                               ; preds = %dec_label_pc_2dd16, %dec_label_pc_2dd05
  %6 = call i32 @staticReturnsTrue.410()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = zext i1 %8 to i64
  %10 = and i32 %6, -256
  %11 = sext i32 %10 to i64
  %12 = or i64 %9, %11
  %13 = icmp eq i1 %8, false
  store i64 %12, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2dd4a, label %dec_label_pc_2dd39

dec_label_pc_2dd39:                               ; preds = %dec_label_pc_2dd2b
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %14 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2dd4a

dec_label_pc_2dd4a:                               ; preds = %dec_label_pc_2dd39, %dec_label_pc_2dd2b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

