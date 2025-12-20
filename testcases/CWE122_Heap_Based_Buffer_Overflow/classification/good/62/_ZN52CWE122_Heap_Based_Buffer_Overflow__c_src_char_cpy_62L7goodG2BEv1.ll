@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2331e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-80, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2335a, label %dec_label_pc_23350

dec_label_pc_23350:                               ; preds = %dec_label_pc_2331e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2335a:                               ; preds = %dec_label_pc_2331e
  %5 = call i64 @anon1(ptr nonnull %stack_var_-80)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = load ptr, ptr %stack_var_-80, align 8
  %7 = bitcast ptr %stack_var_-72 to ptr
  %8 = call ptr @strcpy(ptr nonnull %7, ptr %6)
  %9 = load ptr, ptr %stack_var_-80, align 8
  call void @printLine(ptr %9)
  %10 = load ptr, ptr %stack_var_-80, align 8
  %11 = bitcast ptr %10 to ptr
  call void @free(ptr %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_233dc, label %dec_label_pc_233d7

dec_label_pc_233d7:                               ; preds = %dec_label_pc_2335a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_233dc

dec_label_pc_233dc:                               ; preds = %dec_label_pc_233d7, %dec_label_pc_2335a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_23428:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

