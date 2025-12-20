@global_var_4a906 = external constant [21 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a688:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_3a6b8, label %dec_label_pc_3a6a7

dec_label_pc_3a6a7:                               ; preds = %dec_label_pc_3a688
  call void @printLine(ptr @global_var_4a906)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3a6db

dec_label_pc_3a6b8:                               ; preds = %dec_label_pc_3a688
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3a6db

dec_label_pc_3a6db:                               ; preds = %dec_label_pc_3a6b8, %dec_label_pc_3a6a7
  %6 = load i32, ptr @global_var_630ac, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp eq i32 %6, 5
  %9 = icmp eq i1 %8, false
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_3a6f2, label %dec_label_pc_3a6e6

dec_label_pc_3a6e6:                               ; preds = %dec_label_pc_3a6db
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a6f2

dec_label_pc_3a6f2:                               ; preds = %dec_label_pc_3a6e6, %dec_label_pc_3a6db
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

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

