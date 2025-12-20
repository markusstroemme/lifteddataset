@0 = external global i32
@global_var_5b04c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32841:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5b04c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_32896, label %dec_label_pc_32875

dec_label_pc_32875:                               ; preds = %dec_label_pc_32841
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %1, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  br label %dec_label_pc_32896

dec_label_pc_32896:                               ; preds = %dec_label_pc_32875, %dec_label_pc_32841
  %9 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call ptr @strcpy(ptr nonnull %10, ptr %9)
  call void @printLine(ptr %9)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_328fe, label %dec_label_pc_328f2

dec_label_pc_328f2:                               ; preds = %dec_label_pc_32896
  %13 = inttoptr i64 %1 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_328fe

dec_label_pc_328fe:                               ; preds = %dec_label_pc_328f2, %dec_label_pc_32896
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_32913, label %dec_label_pc_3290e

dec_label_pc_3290e:                               ; preds = %dec_label_pc_328fe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32913

dec_label_pc_32913:                               ; preds = %dec_label_pc_3290e, %dec_label_pc_328fe
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

