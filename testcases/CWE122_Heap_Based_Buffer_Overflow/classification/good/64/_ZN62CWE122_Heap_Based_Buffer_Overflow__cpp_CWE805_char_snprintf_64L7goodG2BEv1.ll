@global_var_5290e = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_33aab:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-24 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_33b04, label %dec_label_pc_33aff

dec_label_pc_33aff:                               ; preds = %dec_label_pc_33aab
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33b04

dec_label_pc_33b04:                               ; preds = %dec_label_pc_33aff, %dec_label_pc_33aab
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_33bc5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %arg1 to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %2, i32 100, ptr @global_var_5290e, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %2)
  %4 = icmp eq ptr %arg1, null
  br i1 %4, label %dec_label_pc_33c5d, label %dec_label_pc_33c51

dec_label_pc_33c51:                               ; preds = %dec_label_pc_33bc5
  call void @_ZdaPv(ptr nonnull %arg1, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_33c5d

dec_label_pc_33c5d:                               ; preds = %dec_label_pc_33c51, %dec_label_pc_33bc5
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_33c72, label %dec_label_pc_33c6d

dec_label_pc_33c6d:                               ; preds = %dec_label_pc_33c5d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33c72

dec_label_pc_33c72:                               ; preds = %dec_label_pc_33c6d, %dec_label_pc_33c5d
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

