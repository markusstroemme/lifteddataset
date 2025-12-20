@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_344d2:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3450c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-80, align 8
  %3 = call i64 @anon0(ptr nonnull %stack_var_-80)
  store i64 0, ptr %stack_var_-72, align 8
  %4 = load ptr, ptr %stack_var_-80, align 8
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call ptr @strcpy(ptr nonnull %5, ptr %4)
  %7 = load ptr, ptr %stack_var_-80, align 8
  call void @printLine(ptr %7)
  %8 = load ptr, ptr %stack_var_-80, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %dec_label_pc_345ab, label %dec_label_pc_3459f

dec_label_pc_3459f:                               ; preds = %dec_label_pc_3450c
  %10 = ptrtoint ptr %4 to i64
  %11 = bitcast ptr %8 to ptr
  %12 = and i64 %10, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_345ab

dec_label_pc_345ab:                               ; preds = %dec_label_pc_3459f, %dec_label_pc_3450c
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_345c0, label %dec_label_pc_345bb

dec_label_pc_345bb:                               ; preds = %dec_label_pc_345ab
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_345c0

dec_label_pc_345c0:                               ; preds = %dec_label_pc_345bb, %dec_label_pc_345ab
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

