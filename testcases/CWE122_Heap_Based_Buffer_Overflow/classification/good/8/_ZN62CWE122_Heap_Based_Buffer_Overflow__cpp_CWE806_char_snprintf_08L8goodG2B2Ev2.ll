@global_var_47a0f = external constant [3 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.48() local_unnamed_addr {
dec_label_pc_33999:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_33bac:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @staticReturnsTrue.48()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_33c04, label %dec_label_pc_33be3

dec_label_pc_33be3:                               ; preds = %dec_label_pc_33bac
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %1, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_33c04

dec_label_pc_33c04:                               ; preds = %dec_label_pc_33be3, %dec_label_pc_33bac
  %10 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %12, i32 %11, ptr @global_var_47a0f, ptr %10)
  call void @printLine(ptr %10)
  %14 = icmp eq i64 %1, 0
  br i1 %14, label %dec_label_pc_33c87, label %dec_label_pc_33c7b

dec_label_pc_33c7b:                               ; preds = %dec_label_pc_33c04
  %15 = zext i32 %11 to i64
  %16 = inttoptr i64 %1 to ptr
  %17 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %16, ptr %17)
  br label %dec_label_pc_33c87

dec_label_pc_33c87:                               ; preds = %dec_label_pc_33c7b, %dec_label_pc_33c04
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_33c9c, label %dec_label_pc_33c97

dec_label_pc_33c97:                               ; preds = %dec_label_pc_33c87
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33c9c

dec_label_pc_33c9c:                               ; preds = %dec_label_pc_33c97, %dec_label_pc_33c87
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

