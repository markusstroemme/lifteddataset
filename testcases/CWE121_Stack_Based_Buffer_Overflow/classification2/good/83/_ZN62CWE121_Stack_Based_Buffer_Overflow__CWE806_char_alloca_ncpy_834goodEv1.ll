@global_var_fff = external global ptr
@0 = external global i32
@global_var_1000 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_6c856:
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
dec_label_pc_6c8a0:
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
  br i1 %6, label %dec_label_pc_6c945, label %dec_label_pc_6c940

dec_label_pc_6c940:                               ; preds = %dec_label_pc_6c8a0
  call void @__stack_chk_fail()
  br label %dec_label_pc_6c945

dec_label_pc_6c945:                               ; preds = %dec_label_pc_6c940, %dec_label_pc_6c8a0
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_6ca21:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6ca6a

dec_label_pc_6ca6a:                               ; preds = %dec_label_pc_6ca6a, %dec_label_pc_6ca21
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6ca81, label %dec_label_pc_6ca6a

dec_label_pc_6ca81:                               ; preds = %dec_label_pc_6ca6a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  call void @anon0(ptr nonnull %stack_var_-40, ptr %6)
  call void @anon1(ptr nonnull %stack_var_-40)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_6caf9, label %dec_label_pc_6caf4

dec_label_pc_6caf4:                               ; preds = %dec_label_pc_6ca81
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6caf9

dec_label_pc_6caf9:                               ; preds = %dec_label_pc_6caf4, %dec_label_pc_6ca81
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

