@global_var_4a5bd = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.412() local_unnamed_addr {
dec_label_pc_30130:
  ret i32 1
}

define i32 @staticReturnsFalse.413() local_unnamed_addr {
dec_label_pc_3013f:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_302a7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsFalse.413()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_302da, label %dec_label_pc_302c9

dec_label_pc_302c9:                               ; preds = %dec_label_pc_302a7
  call void @printLine(ptr @global_var_4a5bd)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_302fd

dec_label_pc_302da:                               ; preds = %dec_label_pc_302a7
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_302fd

dec_label_pc_302fd:                               ; preds = %dec_label_pc_302da, %dec_label_pc_302c9
  %8 = call i32 @staticReturnsTrue.412()
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i1 %9, false
  %11 = zext i1 %10 to i64
  %12 = and i32 %8, -256
  %13 = sext i32 %12 to i64
  %14 = or i64 %11, %13
  %15 = icmp eq i1 %10, false
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_30318, label %dec_label_pc_3030b

dec_label_pc_3030b:                               ; preds = %dec_label_pc_302fd
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %16 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %16)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_30318

dec_label_pc_30318:                               ; preds = %dec_label_pc_3030b, %dec_label_pc_302fd
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

