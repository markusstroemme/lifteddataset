@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_796e4:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7972e:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %result to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call ptr @strncpy(ptr nonnull %3, ptr %1, i32 %2)
  call void @printLine(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_797d3, label %dec_label_pc_797ce

dec_label_pc_797ce:                               ; preds = %dec_label_pc_7972e
  call void @__stack_chk_fail()
  br label %dec_label_pc_797d3

dec_label_pc_797d3:                               ; preds = %dec_label_pc_797ce, %dec_label_pc_7972e
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_7982d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  call void @anon0(ptr nonnull %stack_var_-136, ptr nonnull %1)
  call void @anon1(ptr nonnull %stack_var_-136)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_79883, label %dec_label_pc_7987e

dec_label_pc_7987e:                               ; preds = %dec_label_pc_7982d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_79883

dec_label_pc_79883:                               ; preds = %dec_label_pc_7987e, %dec_label_pc_7982d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

