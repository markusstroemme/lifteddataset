@0 = external global i32
@global_var_5c0f8 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1fae9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_5c0f8, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %3, i32 %2)
  call void @printLine(ptr %1)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %dec_label_pc_1fb8a, label %dec_label_pc_1fb7e

dec_label_pc_1fb7e:                               ; preds = %dec_label_pc_1fae9
  %6 = ptrtoint ptr %1 to i64
  %7 = and i64 %6, 4294967295
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %3, ptr %8)
  br label %dec_label_pc_1fb8a

dec_label_pc_1fb8a:                               ; preds = %dec_label_pc_1fb7e, %dec_label_pc_1fae9
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1fb9f, label %dec_label_pc_1fb9a

dec_label_pc_1fb9a:                               ; preds = %dec_label_pc_1fb8a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1fb9f

dec_label_pc_1fb9f:                               ; preds = %dec_label_pc_1fb9a, %dec_label_pc_1fb8a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_1fba1:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = inttoptr i64 %0 to ptr
  store ptr %5, ptr @global_var_5c0f8, align 8
  %6 = call i64 @anon0()
  ret i64 %6
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

