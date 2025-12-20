@global_var_51b7f = external constant [21 x i8]
@0 = external global i32
@global_var_6c0e0 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_1e81d:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_6c0e0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1e848, label %dec_label_pc_1e837

dec_label_pc_1e837:                               ; preds = %dec_label_pc_1e81d
  call void @printLine(ptr @global_var_51b7f)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1e85d

dec_label_pc_1e848:                               ; preds = %dec_label_pc_1e81d
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1e85d

dec_label_pc_1e85d:                               ; preds = %dec_label_pc_1e848, %dec_label_pc_1e837
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_1e863:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_6c0e0, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %7)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_1e8fc, label %dec_label_pc_1e8f0

dec_label_pc_1e8f0:                               ; preds = %dec_label_pc_1e863
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %3, ptr %11)
  br label %dec_label_pc_1e8fc

dec_label_pc_1e8fc:                               ; preds = %dec_label_pc_1e8f0, %dec_label_pc_1e863
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1e911, label %dec_label_pc_1e90c

dec_label_pc_1e90c:                               ; preds = %dec_label_pc_1e8fc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e911

dec_label_pc_1e911:                               ; preds = %dec_label_pc_1e90c, %dec_label_pc_1e8fc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

