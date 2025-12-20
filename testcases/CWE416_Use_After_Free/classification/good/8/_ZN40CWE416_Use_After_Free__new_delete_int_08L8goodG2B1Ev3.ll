@global_var_4a72d = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.416() local_unnamed_addr {
dec_label_pc_34d69:
  ret i32 1
}

define i32 @staticReturnsFalse.417() local_unnamed_addr {
dec_label_pc_34d78:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34ebf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsFalse.417()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_34ef2, label %dec_label_pc_34ee1

dec_label_pc_34ee1:                               ; preds = %dec_label_pc_34ebf
  call void @printLine(ptr @global_var_4a72d)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_34f0a

dec_label_pc_34ef2:                               ; preds = %dec_label_pc_34ebf
  %4 = call i64 @_Znwm(i64 4)
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_34f0a

dec_label_pc_34f0a:                               ; preds = %dec_label_pc_34ef2, %dec_label_pc_34ee1
  %6 = call i32 @staticReturnsTrue.416()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = zext i1 %8 to i64
  %10 = and i32 %6, -256
  %11 = sext i32 %10 to i64
  %12 = or i64 %9, %11
  %13 = icmp eq i1 %8, false
  store i64 %12, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_34f25, label %dec_label_pc_34f18

dec_label_pc_34f18:                               ; preds = %dec_label_pc_34f0a
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %14 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34f25

dec_label_pc_34f25:                               ; preds = %dec_label_pc_34f18, %dec_label_pc_34f0a
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

