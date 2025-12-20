@global_var_5280f = external constant [3 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.55() local_unnamed_addr {
dec_label_pc_30178:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3031b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.55()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_30361, label %dec_label_pc_3034c

dec_label_pc_3034c:                               ; preds = %dec_label_pc_3031b
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_30361

dec_label_pc_30361:                               ; preds = %dec_label_pc_3034c, %dec_label_pc_3031b
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_5280f, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %9 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %9, label %dec_label_pc_303be, label %dec_label_pc_303b2

dec_label_pc_303b2:                               ; preds = %dec_label_pc_30361
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @_ZdaPv(ptr %10, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_303be

dec_label_pc_303be:                               ; preds = %dec_label_pc_303b2, %dec_label_pc_30361
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_303d3, label %dec_label_pc_303ce

dec_label_pc_303ce:                               ; preds = %dec_label_pc_303be
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_303d3

dec_label_pc_303d3:                               ; preds = %dec_label_pc_303ce, %dec_label_pc_303be
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

