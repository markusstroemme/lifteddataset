@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18109:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = inttoptr i64 %0 to ptr
  %6 = call i64 @anon1(ptr %5)
  ret i64 %6
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_18214:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %arg1)
  %2 = bitcast ptr %arg1 to ptr
  %3 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %2, i32 %1)
  call void @printLine(ptr %arg1)
  %4 = icmp eq ptr %arg1, null
  br i1 %4, label %dec_label_pc_182ae, label %dec_label_pc_182a2

dec_label_pc_182a2:                               ; preds = %dec_label_pc_18214
  %5 = ptrtoint ptr %arg1 to i64
  %6 = and i64 %5, 4294967295
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr %2, ptr %7)
  br label %dec_label_pc_182ae

dec_label_pc_182ae:                               ; preds = %dec_label_pc_182a2, %dec_label_pc_18214
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_182c3, label %dec_label_pc_182be

dec_label_pc_182be:                               ; preds = %dec_label_pc_182ae
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_182c3

dec_label_pc_182c3:                               ; preds = %dec_label_pc_182be, %dec_label_pc_182ae
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

