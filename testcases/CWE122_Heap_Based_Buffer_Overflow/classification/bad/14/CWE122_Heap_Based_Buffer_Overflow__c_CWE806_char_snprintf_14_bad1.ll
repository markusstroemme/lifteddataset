@global_var_486a3 = external constant [3 x i8]
@global_var_5e04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_27dcc:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_27e06, label %dec_label_pc_27dfc

dec_label_pc_27dfc:                               ; preds = %dec_label_pc_27dcc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_27e06:                               ; preds = %dec_label_pc_27dcc
  %4 = load i32, ptr @global_var_5e04c, align 4
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_27e32, label %dec_label_pc_27e11

dec_label_pc_27e11:                               ; preds = %dec_label_pc_27e06
  %7 = call ptr @memset(ptr %1, i32 65, i32 99)
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_27e32

dec_label_pc_27e32:                               ; preds = %dec_label_pc_27e11, %dec_label_pc_27e06
  %11 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %12 = call i32 @strlen(ptr %11)
  %13 = bitcast ptr %stack_var_-72 to ptr
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %13, i32 %12, ptr @global_var_486a3, ptr %1)
  call void @printLine(ptr %11)
  call void @free(ptr %1)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_27ec3, label %dec_label_pc_27ebe

dec_label_pc_27ebe:                               ; preds = %dec_label_pc_27e32
  call void @__stack_chk_fail()
  br label %dec_label_pc_27ec3

dec_label_pc_27ec3:                               ; preds = %dec_label_pc_27ebe, %dec_label_pc_27e32
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

