@global_var_528ae = external constant [3 x i8]
@global_var_528b1 = external constant [21 x i8]
@0 = external global i32
@global_var_6c1a0 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_3187a:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_6c1a0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_318a5, label %dec_label_pc_31894

dec_label_pc_31894:                               ; preds = %dec_label_pc_3187a
  call void @printLine(ptr @global_var_528b1)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_318ba

dec_label_pc_318a5:                               ; preds = %dec_label_pc_3187a
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_318ba

dec_label_pc_318ba:                               ; preds = %dec_label_pc_318a5, %dec_label_pc_31894
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_318c0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_6c1a0, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %3, i32 100, ptr @global_var_528ae, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %3)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_3195a, label %dec_label_pc_3194e

dec_label_pc_3194e:                               ; preds = %dec_label_pc_318c0
  %6 = inttoptr i64 %1 to ptr
  call void @_ZdaPv(ptr %6, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_3195a

dec_label_pc_3195a:                               ; preds = %dec_label_pc_3194e, %dec_label_pc_318c0
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3196f, label %dec_label_pc_3196a

dec_label_pc_3196a:                               ; preds = %dec_label_pc_3195a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3196f

dec_label_pc_3196f:                               ; preds = %dec_label_pc_3196a, %dec_label_pc_3195a
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

