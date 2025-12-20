@global_var_52917 = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34058:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 50)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = call i64 @anon1(i64 %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_340b9, label %dec_label_pc_340b4

dec_label_pc_340b4:                               ; preds = %dec_label_pc_34058
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_340b9

dec_label_pc_340b9:                               ; preds = %dec_label_pc_340b4, %dec_label_pc_34058
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3412e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %2, i32 100, ptr @global_var_52917, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %2)
  %4 = icmp eq i64 %arg1, 0
  br i1 %4, label %dec_label_pc_341bb, label %dec_label_pc_341af

dec_label_pc_341af:                               ; preds = %dec_label_pc_3412e
  %5 = inttoptr i64 %arg1 to ptr
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_341bb

dec_label_pc_341bb:                               ; preds = %dec_label_pc_341af, %dec_label_pc_3412e
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_341d0, label %dec_label_pc_341cb

dec_label_pc_341cb:                               ; preds = %dec_label_pc_341bb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_341d0

dec_label_pc_341d0:                               ; preds = %dec_label_pc_341cb, %dec_label_pc_341bb
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

