@global_var_4a7e5 = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.418() local_unnamed_addr {
dec_label_pc_37207:
  ret i32 1
}

define i32 @staticReturnsFalse.419() local_unnamed_addr {
dec_label_pc_37216:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37296:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.418()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_372e7, label %dec_label_pc_372b8

dec_label_pc_372b8:                               ; preds = %dec_label_pc_37296
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_372e7, label %dec_label_pc_372da

dec_label_pc_372da:                               ; preds = %dec_label_pc_372b8
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_372e7

dec_label_pc_372e7:                               ; preds = %dec_label_pc_372da, %dec_label_pc_372b8, %dec_label_pc_37296
  %8 = call i32 @staticReturnsFalse.419()
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i1 %9, false
  %11 = zext i1 %10 to i64
  %12 = and i32 %8, -256
  %13 = sext i32 %12 to i64
  %14 = or i64 %11, %13
  %15 = icmp eq i1 %10, false
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_37304, label %dec_label_pc_372f5

dec_label_pc_372f5:                               ; preds = %dec_label_pc_372e7
  call void @printLine(ptr @global_var_4a7e5)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37304

dec_label_pc_37304:                               ; preds = %dec_label_pc_372f5, %dec_label_pc_372e7
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

