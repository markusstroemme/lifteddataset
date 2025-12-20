@global_var_48628 = external constant [3 x i8]
@global_var_4862b = external constant [21 x i8]

define i32 @staticReturnsFalse.363() local_unnamed_addr {
dec_label_pc_26bd7:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_26ce2:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_26d1c, label %dec_label_pc_26d12

dec_label_pc_26d12:                               ; preds = %dec_label_pc_26ce2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_26d1c:                               ; preds = %dec_label_pc_26ce2
  %4 = call i32 @staticReturnsFalse.363()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_26d3b, label %dec_label_pc_26d2a

dec_label_pc_26d2a:                               ; preds = %dec_label_pc_26d1c
  call void @printLine(ptr @global_var_4862b)
  br label %dec_label_pc_26d5c

dec_label_pc_26d3b:                               ; preds = %dec_label_pc_26d1c
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_26d5c

dec_label_pc_26d5c:                               ; preds = %dec_label_pc_26d3b, %dec_label_pc_26d2a
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %12, i32 %11, ptr @global_var_48628, ptr %1)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_26ded, label %dec_label_pc_26de8

dec_label_pc_26de8:                               ; preds = %dec_label_pc_26d5c
  call void @__stack_chk_fail()
  br label %dec_label_pc_26ded

dec_label_pc_26ded:                               ; preds = %dec_label_pc_26de8, %dec_label_pc_26d5c
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

