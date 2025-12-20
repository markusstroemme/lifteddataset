@global_var_5283f = external constant [3 x i8]
@global_var_52842 = external constant [21 x i8]
@0 = external global i32
@global_var_6c218 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_306e8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c218, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_30726, label %dec_label_pc_30715

dec_label_pc_30715:                               ; preds = %dec_label_pc_306e8
  call void @printLine(ptr @global_var_52842)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_3073b

dec_label_pc_30726:                               ; preds = %dec_label_pc_306e8
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_3073b

dec_label_pc_3073b:                               ; preds = %dec_label_pc_30726, %dec_label_pc_30715
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_5283f, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %7 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %7, label %dec_label_pc_30798, label %dec_label_pc_3078c

dec_label_pc_3078c:                               ; preds = %dec_label_pc_3073b
  %8 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_30798

dec_label_pc_30798:                               ; preds = %dec_label_pc_3078c, %dec_label_pc_3073b
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_307ad, label %dec_label_pc_307a8

dec_label_pc_307a8:                               ; preds = %dec_label_pc_30798
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_307ad

dec_label_pc_307ad:                               ; preds = %dec_label_pc_307a8, %dec_label_pc_30798
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

