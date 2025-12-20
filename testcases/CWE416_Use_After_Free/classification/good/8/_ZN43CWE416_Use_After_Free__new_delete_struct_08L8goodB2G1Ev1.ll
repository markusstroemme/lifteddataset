@global_var_4a89d = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.420() local_unnamed_addr {
dec_label_pc_3983d:
  ret i32 1
}

define i32 @staticReturnsFalse.421() local_unnamed_addr {
dec_label_pc_3984c:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_398d3:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.420()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3992e, label %dec_label_pc_398f5

dec_label_pc_398f5:                               ; preds = %dec_label_pc_398d3
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %dec_label_pc_3992e, label %dec_label_pc_39921

dec_label_pc_39921:                               ; preds = %dec_label_pc_398f5
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_3992e

dec_label_pc_3992e:                               ; preds = %dec_label_pc_39921, %dec_label_pc_398f5, %dec_label_pc_398d3
  %11 = call i32 @staticReturnsFalse.421()
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i1 %12, false
  %14 = zext i1 %13 to i64
  %15 = and i32 %11, -256
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  %18 = icmp eq i1 %13, false
  store i64 %17, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_3994b, label %dec_label_pc_3993c

dec_label_pc_3993c:                               ; preds = %dec_label_pc_3992e
  call void @printLine(ptr @global_var_4a89d)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3994b

dec_label_pc_3994b:                               ; preds = %dec_label_pc_3993c, %dec_label_pc_3992e
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

