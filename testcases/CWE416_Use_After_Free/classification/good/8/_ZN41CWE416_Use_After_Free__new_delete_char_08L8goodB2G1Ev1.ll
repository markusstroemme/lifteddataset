@global_var_4a505 = external constant [21 x i8]
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
dec_label_pc_2dc1f:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.410()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2dc6c, label %dec_label_pc_2dc41

dec_label_pc_2dc41:                               ; preds = %dec_label_pc_2dc1f
  %4 = call i64 @_Znwm(i64 1)
  %5 = inttoptr i64 %4 to ptr
  store i8 65, ptr %5, align 1
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_2dc6c, label %dec_label_pc_2dc5f

dec_label_pc_2dc5f:                               ; preds = %dec_label_pc_2dc41
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 1)
  br label %dec_label_pc_2dc6c

dec_label_pc_2dc6c:                               ; preds = %dec_label_pc_2dc5f, %dec_label_pc_2dc41, %dec_label_pc_2dc1f
  %9 = call i32 @staticReturnsFalse.411()
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i1 %10, false
  %12 = zext i1 %11 to i64
  %13 = and i32 %9, -256
  %14 = sext i32 %13 to i64
  %15 = or i64 %12, %14
  %16 = icmp eq i1 %11, false
  store i64 %15, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_2dc89, label %dec_label_pc_2dc7a

dec_label_pc_2dc7a:                               ; preds = %dec_label_pc_2dc6c
  call void @printLine(ptr @global_var_4a505)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2dc89

dec_label_pc_2dc89:                               ; preds = %dec_label_pc_2dc7a, %dec_label_pc_2dc6c
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

